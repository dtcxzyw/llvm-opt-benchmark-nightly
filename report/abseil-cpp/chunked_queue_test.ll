Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/chunked_queue_test?download=true
inline.NumInlined: 6731
inline.NumDeleted: 2085
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0
@_ZTVN12_GLOBAL__N_123ChunkedQueue_Empty_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_123ChunkedQueue_Empty_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_123ChunkedQueue_Empty_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_123ChunkedQueue_Empty_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_123ChunkedQueue_Empty_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_123ChunkedQueue_Empty_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_123ChunkedQueue_Empty_TestE = internal constant [42 x i8] c"N12_GLOBAL__N_123ChunkedQueue_Empty_TestE\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"q.empty()\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"q.front()\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"q.back()\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestEEE = internal constant [88 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestE = internal constant [50 x i8] c"N12_GLOBAL__N_131ChunkedQueue_CopyConstruct_TestE\00", align 1
@.str.179 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.180 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"r.size()\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestEEE = internal constant [102 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestE = internal constant [64 x i8] c"N12_GLOBAL__N_145ChunkedQueue_CopyConstructMultipleChunks_TestE\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@_ZTVN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE, ptr @_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEED2Ev, ptr @_ZN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEED0Ev, ptr @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEE10DescribeToEPSo, ptr @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEE18DescribeNegationToEPSo, ptr @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEE15MatchAndExplainES8_PNS_19MatchResultListenerE] }, comdat, align 8
@_ZTIN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE, ptr @_ZTIN7testing16MatcherInterfaceIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE }, comdat, align 8
@_ZTSN7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE = linkonce_odr dso_local constant [100 x i8] c"N7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE\00", comdat, align 1
@_ZTIN7testing16MatcherInterfaceIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing16MatcherInterfaceIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE, ptr @_ZTIN7testing25MatcherDescriberInterfaceE }, comdat, align 8
@_ZTSN7testing16MatcherInterfaceIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE = linkonce_odr dso_local constant [85 x i8] c"N7testing16MatcherInterfaceIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE\00", comdat, align 1
@_ZTVN7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE, ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEED2Ev, ptr @_ZN7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEE18DescribeNegationToEPSo] }, comdat, align 8
@_ZTIN7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE, ptr @_ZTIN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE }, comdat, align 8
@_ZTSN7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE = linkonce_odr dso_local constant [75 x i8] c"N7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE\00", comdat, align 1
@_ZTIN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE, i32 0, i32 1, ptr @_ZTIN7testing25MatcherDescriberInterfaceE, i64 0 }, comdat, align 8
@_ZTSN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE = linkonce_odr dso_local constant [89 x i8] c"N7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE\00", comdat, align 1
@_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEE, ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEED2Ev, ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEE18DescribeNegationToEPSo] }, comdat, align 8
@_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEE9GetVTableINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEPKNS9_6VTableEvE7kVTable = linkonce_odr dso_local constant %"struct.testing::internal::MatcherBase<const absl::lts_20260526::chunked_queue<long, 2> &>::VTable" { ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEE19MatchAndExplainImplINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKS9_S8_PNS_19MatchResultListenerE, ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEE12DescribeImplINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEvRKS9_PSob, ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEE16GetDescriberImplINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS9_, ptr @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEEEESt14default_deleteISC_EEE7DestroyEPNS0_17SharedPayloadBaseE }, comdat, align 8
@_ZTIN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEE }, comdat, align 8
@_ZTSN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEE = linkonce_odr dso_local constant [53 x i8] c"N4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEEE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestEEE = internal constant [92 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestE = internal constant [54 x i8] c"N12_GLOBAL__N_135ChunkedQueue_BeginEndConstruct_TestE\00", align 1
@.str.184 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"q.size()\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestEEE = internal constant [99 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestE = internal constant [61 x i8] c"N12_GLOBAL__N_142ChunkedQueue_InitializerListConstruct_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestEEE = internal constant [89 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_132ChunkedQueue_CountConstruct_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestE = internal constant [51 x i8] c"N12_GLOBAL__N_132ChunkedQueue_CountConstruct_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestEEE = internal constant [94 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestE = internal constant [56 x i8] c"N12_GLOBAL__N_137ChunkedQueue_CountValueConstruct_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestEEE = internal constant [96 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestE = internal constant [58 x i8] c"N12_GLOBAL__N_139ChunkedQueue_InitializerListAssign_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestEEE = internal constant [85 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_128ChunkedQueue_CopyAssign_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestE = internal constant [47 x i8] c"N12_GLOBAL__N_128ChunkedQueue_CopyAssign_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestEEE = internal constant [89 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestE = internal constant [51 x i8] c"N12_GLOBAL__N_132ChunkedQueue_CopyAssignSelf_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestEEE = internal constant [102 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestE = internal constant [64 x i8] c"N12_GLOBAL__N_145ChunkedQueue_CopyAssignDestinationBigger_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestEEE = internal constant [111 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestE = internal constant [73 x i8] c"N12_GLOBAL__N_154ChunkedQueue_CopyAssignSourceBiggerMultipleChunks_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestEEE = internal constant [116 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestE = internal constant [78 x i8] c"N12_GLOBAL__N_159ChunkedQueue_CopyAssignDestinationBiggerMultipleChunks_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestEEE = internal constant [91 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestE = internal constant [53 x i8] c"N12_GLOBAL__N_134ChunkedQueue_AssignCountValue_TestE\00", align 1
@.str.188 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestEEE = internal constant [88 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestE = internal constant [50 x i8] c"N12_GLOBAL__N_131ChunkedQueue_MoveConstruct_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestEEE = internal constant [85 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_128ChunkedQueue_MoveAssign_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestE = internal constant [47 x i8] c"N12_GLOBAL__N_128ChunkedQueue_MoveAssign_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestEEE = internal constant [94 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestE = internal constant [56 x i8] c"N12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_TestE\00", align 1
@_ZTVN7testing8internal13SizeIsMatcherIiE4ImplIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS9_EEEEE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN7testing8internal13SizeIsMatcherIiE4ImplIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS9_EEEEE, ptr @_ZN7testing8internal13SizeIsMatcherIiE4ImplIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS9_EEEED2Ev, ptr @_ZN7testing8internal13SizeIsMatcherIiE4ImplIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS9_EEEED0Ev, ptr @_ZNK7testing8internal13SizeIsMatcherIiE4ImplIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS9_EEEE10DescribeToEPSo, ptr @_ZNK7testing8internal13SizeIsMatcherIiE4ImplIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS9_EEEE18DescribeNegationToEPSo, ptr @_ZNK7testing8internal13SizeIsMatcherIiE4ImplIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS9_EEEE15MatchAndExplainESD_PNS_19MatchResultListenerE] }, align 8
@_ZTIN7testing8internal13SizeIsMatcherIiE4ImplIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS9_EEEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal13SizeIsMatcherIiE4ImplIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS9_EEEEE, ptr @_ZTIN7testing16MatcherInterfaceIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS6_EEEEE }, align 8
@_ZTSN7testing8internal13SizeIsMatcherIiE4ImplIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS9_EEEEE = internal constant [177 x i8] c"N7testing8internal13SizeIsMatcherIiE4ImplIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS9_EEEEE\00", align 1
@_ZTIN7testing16MatcherInterfaceIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS6_EEEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing16MatcherInterfaceIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS6_EEEEE, ptr @_ZTIN7testing25MatcherDescriberInterfaceE }, align 8
@_ZTSN7testing16MatcherInterfaceIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS6_EEEEE = internal constant [163 x i8] c"N7testing16MatcherInterfaceIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS6_EEEEE\00", align 1
@_ZTVN7testing7MatcherImEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing7MatcherImEE, ptr @_ZN7testing8internal11MatcherBaseImED2Ev, ptr @_ZN7testing7MatcherImED0Ev, ptr @_ZNK7testing8internal11MatcherBaseImE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseImE18DescribeNegationToEPSo] }, comdat, align 8
@_ZTIN7testing7MatcherImEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing7MatcherImEE, ptr @_ZTIN7testing8internal11MatcherBaseImEE }, comdat, align 8
@_ZTSN7testing7MatcherImEE = linkonce_odr dso_local constant [22 x i8] c"N7testing7MatcherImEE\00", comdat, align 1
@_ZTIN7testing8internal11MatcherBaseImEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal11MatcherBaseImEE, i32 0, i32 1, ptr @_ZTIN7testing25MatcherDescriberInterfaceE, i64 0 }, comdat, align 8
@_ZTSN7testing8internal11MatcherBaseImEE = linkonce_odr dso_local constant [36 x i8] c"N7testing8internal11MatcherBaseImEE\00", comdat, align 1
@_ZTVN7testing8internal11MatcherBaseImEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing8internal11MatcherBaseImEE, ptr @_ZN7testing8internal11MatcherBaseImED2Ev, ptr @_ZN7testing8internal11MatcherBaseImED0Ev, ptr @_ZNK7testing8internal11MatcherBaseImE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseImE18DescribeNegationToEPSo] }, comdat, align 8
@_ZZN7testing8internal11MatcherBaseImE9GetVTableINS2_11ValuePolicyINS0_9EqMatcherImEELb1EEEEEPKNS2_6VTableEvE7kVTable = linkonce_odr dso_local constant %"struct.testing::internal::MatcherBase<unsigned long>::VTable" { ptr @_ZN7testing8internal11MatcherBaseImE19MatchAndExplainImplINS2_11ValuePolicyINS0_9EqMatcherImEELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS2_RKmPNS_19MatchResultListenerE, ptr @_ZN7testing8internal11MatcherBaseImE12DescribeImplINS2_11ValuePolicyINS0_9EqMatcherImEELb1EEEEEvRKS2_PSob, ptr @_ZN7testing8internal11MatcherBaseImE16GetDescriberImplINS2_11ValuePolicyINS0_9EqMatcherImEELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS2_, ptr null }, comdat, align 8
@.str.189 = private unnamed_addr constant [17 x i8] c"has a size that \00", align 1
@.str.190 = private unnamed_addr constant [12 x i8] c"whose size \00", align 1
@.str.191 = private unnamed_addr constant [9 x i8] c" matches\00", align 1
@.str.192 = private unnamed_addr constant [15 x i8] c" doesn't match\00", align 1
@_ZTVN7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS6_EEEEE = internal constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS6_EEEEE, ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEED2Ev, ptr @_ZN7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS6_EEEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEE18DescribeNegationToEPSo] }, align 8
@_ZTIN7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS6_EEEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS6_EEEEE, ptr @_ZTIN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEEE }, align 8
@_ZTSN7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS6_EEEEE = internal constant [153 x i8] c"N7testing7MatcherIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS6_EEEEE\00", align 1
@_ZTIN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEEE = internal constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEEE, i32 0, i32 1, ptr @_ZTIN7testing25MatcherDescriberInterfaceE, i64 0 }, align 8
@_ZTSN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEEE = internal constant [167 x i8] c"N7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEEE\00", align 1
@_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEEE = internal constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEEE, ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEED2Ev, ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEE18DescribeNegationToEPSo] }, align 8
@_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEE9GetVTableINSC_11ValuePolicyIPKNS_16MatcherInterfaceISB_EELb1EEEEEPKNSC_6VTableEvE7kVTable = internal constant %"struct.testing::internal::MatcherBase<const absl::lts_20260526::chunked_queue<Immovable> &>::VTable" { ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEE19MatchAndExplainImplINSC_11ValuePolicyIPKNS_16MatcherInterfaceISB_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKSC_SB_PNS_19MatchResultListenerE, ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEE12DescribeImplINSC_11ValuePolicyIPKNS_16MatcherInterfaceISB_EELb1EEEEEvRKSC_PSob, ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS7_EEEE16GetDescriberImplINSC_11ValuePolicyIPKNS_16MatcherInterfaceISB_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKSC_, ptr @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS9_EEEEESt14default_deleteISF_EEE7DestroyEPNS0_17SharedPayloadBaseE }, align 8
@_ZTIN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS4_EEE = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS4_EEE }, align 8
@_ZTSN4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS4_EEE = internal constant [131 x i8] c"N4absl12lts_2026052613chunked_queueIZN12_GLOBAL__N_137ChunkedQueue_MoveAssignImmovable_Test8TestBodyEvE9ImmovableLm0ELm0ESaIS4_EEE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestEEE = internal constant [89 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestE = internal constant [51 x i8] c"N12_GLOBAL__N_132ChunkedQueue_MoveAssignSelf_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestEEE = internal constant [102 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestE = internal constant [64 x i8] c"N12_GLOBAL__N_145ChunkedQueue_MoveAssignDestinationBigger_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestEEE = internal constant [116 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestE = internal constant [78 x i8] c"N12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestEEE = internal constant [89 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestE = internal constant [51 x i8] c"N12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestE\00", align 1
@.str.193 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.194 = private unnamed_addr constant [13 x i8] c"qref.front()\00", align 1
@.str.195 = private unnamed_addr constant [12 x i8] c"qref.back()\00", align 1
@.str.196 = private unnamed_addr constant [3 x i8] c"73\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"137\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestEEE = internal constant [85 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_128ChunkedQueue_PushAndPop_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestE = internal constant [47 x i8] c"N12_GLOBAL__N_128ChunkedQueue_PushAndPop_TestE\00", align 1
@.str.198 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c": iteration \00", align 1
@.str.201 = private unnamed_addr constant [10 x i8] c"10000 - i\00", align 1
@.str.202 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_122ChunkedQueue_Swap_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_122ChunkedQueue_Swap_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_122ChunkedQueue_Swap_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_122ChunkedQueue_Swap_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_122ChunkedQueue_Swap_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_122ChunkedQueue_Swap_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_122ChunkedQueue_Swap_TestEEE = internal constant [79 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_122ChunkedQueue_Swap_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_122ChunkedQueue_Swap_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_122ChunkedQueue_Swap_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_122ChunkedQueue_Swap_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_122ChunkedQueue_Swap_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_122ChunkedQueue_Swap_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_122ChunkedQueue_Swap_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_122ChunkedQueue_Swap_TestE = internal constant [41 x i8] c"N12_GLOBAL__N_122ChunkedQueue_Swap_TestE\00", align 1
@.str.204 = private unnamed_addr constant [11 x i8] c"q1.front()\00", align 1
@.str.206 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"q2.front()\00", align 1
@.str.208 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"q1.empty()\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestEEE = internal constant [86 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestE = internal constant [48 x i8] c"N12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestEEE = internal constant [88 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestE = internal constant [50 x i8] c"N12_GLOBAL__N_131ChunkedQueue_ResizeExtends_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestEEE = internal constant [88 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestE = internal constant [50 x i8] c"N12_GLOBAL__N_131ChunkedQueue_ResizeShrinks_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestEEE = internal constant [102 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestE = internal constant [64 x i8] c"N12_GLOBAL__N_145ChunkedQueue_ResizeExtendsMultipleBlocks_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestEEE = internal constant [102 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestE = internal constant [64 x i8] c"N12_GLOBAL__N_145ChunkedQueue_ResizeShrinksMultipleBlocks_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestEEE = internal constant [86 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_129ChunkedQueue_ResizeValue_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestE = internal constant [48 x i8] c"N12_GLOBAL__N_129ChunkedQueue_ResizeValue_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestEEE = internal constant [82 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_125ChunkedQueue_MaxSize_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_125ChunkedQueue_MaxSize_TestE = internal constant [44 x i8] c"N12_GLOBAL__N_125ChunkedQueue_MaxSize_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestEEE = internal constant [88 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_131ChunkedQueue_AssignExtends_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestE = internal constant [50 x i8] c"N12_GLOBAL__N_131ChunkedQueue_AssignExtends_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestEEE = internal constant [88 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestE = internal constant [50 x i8] c"N12_GLOBAL__N_131ChunkedQueue_AssignShrinks_TestE\00", align 1
@constinit.213 = private unnamed_addr constant [5 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5], align 8
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestEEE = internal constant [98 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestE = internal constant [60 x i8] c"N12_GLOBAL__N_141ChunkedQueue_AssignBoundaryCondition_TestE\00", align 1
@constinit.214 = private unnamed_addr constant [12 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12], align 4
@.str.215 = private unnamed_addr constant [4 x i8] c"101\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c"104\00", align 1
@.str.217 = private unnamed_addr constant [4 x i8] c"105\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126ChunkedQueue_Iterator_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126ChunkedQueue_Iterator_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126ChunkedQueue_Iterator_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126ChunkedQueue_Iterator_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126ChunkedQueue_Iterator_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126ChunkedQueue_Iterator_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_126ChunkedQueue_Iterator_TestEEE = internal constant [83 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_126ChunkedQueue_Iterator_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_126ChunkedQueue_Iterator_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_126ChunkedQueue_Iterator_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_126ChunkedQueue_Iterator_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_126ChunkedQueue_Iterator_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_126ChunkedQueue_Iterator_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_126ChunkedQueue_Iterator_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_126ChunkedQueue_Iterator_TestE = internal constant [45 x i8] c"N12_GLOBAL__N_126ChunkedQueue_Iterator_TestE\00", align 1
@.str.218 = private unnamed_addr constant [21 x i8] c"q.begin() == q.end()\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"iter == q.end()\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"*iter\00", align 1
@.str.221 = private unnamed_addr constant [21 x i8] c"copy_iter == q.end()\00", align 1
@.str.222 = private unnamed_addr constant [11 x i8] c"*copy_iter\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestEEE = internal constant [101 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestE = internal constant [63 x i8] c"N12_GLOBAL__N_144ChunkedQueue_IteratorDefaultConstructor_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestEEE = internal constant [93 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestE = internal constant [55 x i8] c"N12_GLOBAL__N_136ChunkedQueue_IteratorConversion_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestEEE = internal constant [84 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_127ChunkedQueue_Iterator2_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_127ChunkedQueue_Iterator2_TestE = internal constant [46 x i8] c"N12_GLOBAL__N_127ChunkedQueue_Iterator2_TestE\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"iter->x\00", align 1
@.str.229 = private unnamed_addr constant [8 x i8] c"iter->y\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestEEE = internal constant [98 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestE = internal constant [60 x i8] c"N12_GLOBAL__N_141ChunkedQueue_Iterator_MultipleBlocks_TestE\00", align 1
@.str.230 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestEEE = internal constant [102 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestE = internal constant [64 x i8] c"N12_GLOBAL__N_145ChunkedQueue_Iterator_PopFrontInvalidate_TestE\00", align 1
@.str.231 = private unnamed_addr constant [16 x i8] c"prev == q.end()\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"*prev\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestEEE = internal constant [102 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestE = internal constant [64 x i8] c"N12_GLOBAL__N_145ChunkedQueue_Iterator_PushBackInvalidate_TestE\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestEEE = internal constant [101 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestE = internal constant [63 x i8] c"N12_GLOBAL__N_144ChunkedQueue_ConstructorDestructorCalls_TestE\00", align 1
@_ZN12_GLOBAL__N_16MyType17constructor_callsE = internal global i32 0, align 4
@_ZN12_GLOBAL__N_16MyType16destructor_callsE = internal global i32 0, align 4
@.str.235 = private unnamed_addr constant [14 x i8] c"q.front().val\00", align 1
@.str.236 = private unnamed_addr constant [26 x i8] c"MyType::constructor_calls\00", align 1
@.str.237 = private unnamed_addr constant [25 x i8] c"MyType::destructor_calls\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestEEE = internal constant [86 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_129ChunkedQueue_MoveObjects_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestE = internal constant [48 x i8] c"N12_GLOBAL__N_129ChunkedQueue_MoveObjects_TestE\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"*q.front()\00", align 1
@.str.239 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestEEE = internal constant [87 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestE = internal constant [49 x i8] c"N12_GLOBAL__N_130ChunkedQueue_EmplaceBack1_TestE\00", align 1
@.str.240 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@_ZTVN7testing8internal15PairMatcherImplIRKSt4pairIiiEEE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN7testing8internal15PairMatcherImplIRKSt4pairIiiEEE, ptr @_ZN7testing8internal15PairMatcherImplIRKSt4pairIiiEED2Ev, ptr @_ZN7testing8internal15PairMatcherImplIRKSt4pairIiiEED0Ev, ptr @_ZNK7testing8internal15PairMatcherImplIRKSt4pairIiiEE10DescribeToEPSo, ptr @_ZNK7testing8internal15PairMatcherImplIRKSt4pairIiiEE18DescribeNegationToEPSo, ptr @_ZNK7testing8internal15PairMatcherImplIRKSt4pairIiiEE15MatchAndExplainES5_PNS_19MatchResultListenerE] }, comdat, align 8
@_ZTIN7testing8internal15PairMatcherImplIRKSt4pairIiiEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15PairMatcherImplIRKSt4pairIiiEEE, ptr @_ZTIN7testing16MatcherInterfaceIRKSt4pairIiiEEE }, comdat, align 8
@_ZTSN7testing8internal15PairMatcherImplIRKSt4pairIiiEEE = linkonce_odr dso_local constant [52 x i8] c"N7testing8internal15PairMatcherImplIRKSt4pairIiiEEE\00", comdat, align 1
@_ZTIN7testing16MatcherInterfaceIRKSt4pairIiiEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing16MatcherInterfaceIRKSt4pairIiiEEE, ptr @_ZTIN7testing25MatcherDescriberInterfaceE }, comdat, align 8
@_ZTSN7testing16MatcherInterfaceIRKSt4pairIiiEEE = linkonce_odr dso_local constant [44 x i8] c"N7testing16MatcherInterfaceIRKSt4pairIiiEEE\00", comdat, align 1
@_ZTVN7testing7MatcherIRKiEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing7MatcherIRKiEE, ptr @_ZN7testing8internal11MatcherBaseIRKiED2Ev, ptr @_ZN7testing7MatcherIRKiED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKiE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo] }, comdat, align 8
@_ZTIN7testing7MatcherIRKiEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing7MatcherIRKiEE, ptr @_ZTIN7testing8internal11MatcherBaseIRKiEE }, comdat, align 8
@_ZTSN7testing7MatcherIRKiEE = linkonce_odr dso_local constant [24 x i8] c"N7testing7MatcherIRKiEE\00", comdat, align 1
@_ZTIN7testing8internal11MatcherBaseIRKiEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal11MatcherBaseIRKiEE, i32 0, i32 1, ptr @_ZTIN7testing25MatcherDescriberInterfaceE, i64 0 }, comdat, align 8
@_ZTSN7testing8internal11MatcherBaseIRKiEE = linkonce_odr dso_local constant [38 x i8] c"N7testing8internal11MatcherBaseIRKiEE\00", comdat, align 1
@_ZTVN7testing8internal11MatcherBaseIRKiEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing8internal11MatcherBaseIRKiEE, ptr @_ZN7testing8internal11MatcherBaseIRKiED2Ev, ptr @_ZN7testing8internal11MatcherBaseIRKiED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKiE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKiE18DescribeNegationToEPSo] }, comdat, align 8
@_ZZN7testing8internal11MatcherBaseIRKiE9GetVTableINS4_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEPKNS4_6VTableEvE7kVTable = linkonce_odr dso_local constant %"struct.testing::internal::MatcherBase<const int &>::VTable" { ptr @_ZN7testing8internal11MatcherBaseIRKiE19MatchAndExplainImplINS4_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS4_S3_PNS_19MatchResultListenerE, ptr @_ZN7testing8internal11MatcherBaseIRKiE12DescribeImplINS4_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEvRKS4_PSob, ptr @_ZN7testing8internal11MatcherBaseIRKiE16GetDescriberImplINS4_11ValuePolicyINS0_9EqMatcherIiEELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS4_, ptr null }, comdat, align 8
@.str.243 = private unnamed_addr constant [24 x i8] c"has a first field that \00", align 1
@.str.244 = private unnamed_addr constant [31 x i8] c", and has a second field that \00", align 1
@.str.245 = private unnamed_addr constant [30 x i8] c", or has a second field that \00", align 1
@.str.246 = private unnamed_addr constant [33 x i8] c"whose first field does not match\00", align 1
@.str.247 = private unnamed_addr constant [34 x i8] c"whose second field does not match\00", align 1
@.str.248 = private unnamed_addr constant [24 x i8] c"whose both fields match\00", align 1
@.str.249 = private unnamed_addr constant [36 x i8] c", where the first field is a value \00", align 1
@.str.250 = private unnamed_addr constant [5 x i8] c"and \00", align 1
@.str.251 = private unnamed_addr constant [7 x i8] c"where \00", align 1
@.str.252 = private unnamed_addr constant [29 x i8] c"the second field is a value \00", align 1
@_ZTVN7testing7MatcherIRKSt4pairIiiEEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing7MatcherIRKSt4pairIiiEEE, ptr @_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev, ptr @_ZN7testing7MatcherIRKSt4pairIiiEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo] }, comdat, align 8
@_ZTIN7testing7MatcherIRKSt4pairIiiEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing7MatcherIRKSt4pairIiiEEE, ptr @_ZTIN7testing8internal11MatcherBaseIRKSt4pairIiiEEE }, comdat, align 8
@_ZTSN7testing7MatcherIRKSt4pairIiiEEE = linkonce_odr dso_local constant [34 x i8] c"N7testing7MatcherIRKSt4pairIiiEEE\00", comdat, align 1
@_ZTIN7testing8internal11MatcherBaseIRKSt4pairIiiEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal11MatcherBaseIRKSt4pairIiiEEE, i32 0, i32 1, ptr @_ZTIN7testing25MatcherDescriberInterfaceE, i64 0 }, comdat, align 8
@_ZTSN7testing8internal11MatcherBaseIRKSt4pairIiiEEE = linkonce_odr dso_local constant [48 x i8] c"N7testing8internal11MatcherBaseIRKSt4pairIiiEEE\00", comdat, align 1
@_ZTVN7testing8internal11MatcherBaseIRKSt4pairIiiEEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing8internal11MatcherBaseIRKSt4pairIiiEEE, ptr @_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED2Ev, ptr @_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKSt4pairIiiEE18DescribeNegationToEPSo] }, comdat, align 8
@_ZZN7testing8internal11MatcherBaseIRKSt4pairIiiEE9GetVTableINS6_11ValuePolicyIPKNS_16MatcherInterfaceIS5_EELb1EEEEEPKNS6_6VTableEvE7kVTable = linkonce_odr dso_local constant %"struct.testing::internal::MatcherBase<const std::pair<int, int> &>::VTable" { ptr @_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEE19MatchAndExplainImplINS6_11ValuePolicyIPKNS_16MatcherInterfaceIS5_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKS6_S5_PNS_19MatchResultListenerE, ptr @_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEE12DescribeImplINS6_11ValuePolicyIPKNS_16MatcherInterfaceIS5_EELb1EEEEEvRKS6_PSob, ptr @_ZN7testing8internal11MatcherBaseIRKSt4pairIiiEE16GetDescriberImplINS6_11ValuePolicyIPKNS_16MatcherInterfaceIS5_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS6_, ptr @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKSt4pairIiiEEESt14default_deleteIS9_EEE7DestroyEPNS0_17SharedPayloadBaseE }, comdat, align 8
@_ZTISt4pairIiiE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt4pairIiiE, ptr @_ZTISt11__pair_baseIiiE }, comdat, align 8
@_ZTSSt4pairIiiE = linkonce_odr dso_local constant [12 x i8] c"St4pairIiiE\00", comdat, align 1
@_ZTISt11__pair_baseIiiE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11__pair_baseIiiE }, comdat, align 8
@_ZTSSt11__pair_baseIiiE = linkonce_odr dso_local constant [20 x i8] c"St11__pair_baseIiiE\00", comdat, align 1
@_ZTVN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestEEE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestEEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestEED0Ev, ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestEE10CreateTestEv] }, align 8
@_ZTIN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestEEE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestEEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, align 8
@_ZTSN7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestEEE = internal constant [87 x i8] c"N7testing8internal15TestFactoryImplIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestEEE\00", align 1
@_ZTVN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestE = internal constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestE, ptr @_ZN7testing4TestD2Ev, ptr @_ZN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTIN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestE, ptr @_ZTIN7testing4TestE }, align 8
@_ZTSN12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestE = internal constant [49 x i8] c"N12_GLOBAL__N_130ChunkedQueue_EmplaceBack2_TestE\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"val12\00", align 1
@_ZTVN7testing8internal15PairMatcherImplIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN7testing8internal15PairMatcherImplIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE, ptr @_ZN7testing8internal15PairMatcherImplIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev, ptr @_ZN7testing8internal15PairMatcherImplIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED0Ev, ptr @_ZNK7testing8internal15PairMatcherImplIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10DescribeToEPSo, ptr @_ZNK7testing8internal15PairMatcherImplIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE18DescribeNegationToEPSo, ptr @_ZNK7testing8internal15PairMatcherImplIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE15MatchAndExplainESF_PNS_19MatchResultListenerE] }, comdat, align 8
@_ZTIN7testing8internal15PairMatcherImplIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15PairMatcherImplIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE, ptr @_ZTIN7testing16MatcherInterfaceIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE }, comdat, align 8
@_ZTSN7testing8internal15PairMatcherImplIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE = linkonce_odr dso_local constant [140 x i8] c"N7testing8internal15PairMatcherImplIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE\00", comdat, align 1
@_ZTIN7testing16MatcherInterfaceIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing16MatcherInterfaceIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE, ptr @_ZTIN7testing25MatcherDescriberInterfaceE }, comdat, align 8
@_ZTSN7testing16MatcherInterfaceIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE = linkonce_odr dso_local constant [132 x i8] c"N7testing16MatcherInterfaceIRKSt4pairISt10unique_ptrIiSt14default_deleteIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE\00", comdat, align 1
@_ZTVN7testing8internal14PointeeMatcherIiE4ImplIRKSt10unique_ptrIiSt14default_deleteIiEEEE = linkonce_odr dso_local constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN7testing8internal14PointeeMatcherIiE4ImplIRKSt10unique_ptrIiSt14default_deleteIiEEEE, ptr @_ZN7testing8internal14PointeeMatcherIiE4ImplIRKSt10unique_ptrIiSt14default_deleteIiEEED2Ev, ptr @_ZN7testing8internal14PointeeMatcherIiE4ImplIRKSt10unique_ptrIiSt14default_deleteIiEEED0Ev, ptr @_ZNK7testing8internal14PointeeMatcherIiE4ImplIRKSt10unique_ptrIiSt14default_deleteIiEEE10DescribeToEPSo, ptr @_ZNK7testing8internal14PointeeMatcherIiE4ImplIRKSt10unique_ptrIiSt14default_deleteIiEEE18DescribeNegationToEPSo, ptr @_ZNK7testing8internal14PointeeMatcherIiE4ImplIRKSt10unique_ptrIiSt14default_deleteIiEEE15MatchAndExplainES9_PNS_19MatchResultListenerE] }, comdat, align 8
@_ZTIN7testing8internal14PointeeMatcherIiE4ImplIRKSt10unique_ptrIiSt14default_deleteIiEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal14PointeeMatcherIiE4ImplIRKSt10unique_ptrIiSt14default_deleteIiEEEE, ptr @_ZTIN7testing16MatcherInterfaceIRKSt10unique_ptrIiSt14default_deleteIiEEEE }, comdat, align 8
@_ZTSN7testing8internal14PointeeMatcherIiE4ImplIRKSt10unique_ptrIiSt14default_deleteIiEEEE = linkonce_odr dso_local constant [86 x i8] c"N7testing8internal14PointeeMatcherIiE4ImplIRKSt10unique_ptrIiSt14default_deleteIiEEEE\00", comdat, align 1
@_ZTIN7testing16MatcherInterfaceIRKSt10unique_ptrIiSt14default_deleteIiEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing16MatcherInterfaceIRKSt10unique_ptrIiSt14default_deleteIiEEEE, ptr @_ZTIN7testing25MatcherDescriberInterfaceE }, comdat, align 8
@_ZTSN7testing16MatcherInterfaceIRKSt10unique_ptrIiSt14default_deleteIiEEEE = linkonce_odr dso_local constant [71 x i8] c"N7testing16MatcherInterfaceIRKSt10unique_ptrIiSt14default_deleteIiEEEE\00", comdat, align 1
@.str.255 = private unnamed_addr constant [24 x i8] c"points to a value that \00", align 1
@.str.256 = private unnamed_addr constant [32 x i8] c"does not point to a value that \00", align 1
@.str.257 = private unnamed_addr constant [17 x i8] c"which points to \00", align 1
@_ZTIi = external constant ptr
@_ZTVN7testing7MatcherIRKSt10unique_ptrIiSt14default_deleteIiEEEE = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN7testing7MatcherIRKSt10unique_ptrIiSt14default_deleteIiEEEE, ptr @_ZN7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEED2Ev, ptr @_ZN7testing7MatcherIRKSt10unique_ptrIiSt14default_deleteIiEEED0Ev, ptr @_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE10DescribeToEPSo, ptr @_ZNK7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEE18DescribeNegationToEPSo] }, comdat, align 8
@_ZTIN7testing7MatcherIRKSt10unique_ptrIiSt14default_deleteIiEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing7MatcherIRKSt10unique_ptrIiSt14default_deleteIiEEEE, ptr @_ZTIN7testing8internal11MatcherBaseIRKSt10unique_ptrIiSt14default_deleteIiEEEE }, comdat, align 8
@_ZTSN7testing7MatcherIRKSt10unique_ptrIiSt14default_deleteIiEEEE = linkonce_odr dso_local constant [61 x i8] c"N7testing7MatcherIRKSt10unique_ptrIiSt14default_deleteIiEEEE\00", comdat, align 1
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_159ChunkedQueue_MoveAssignDestinationBiggerMultipleChunks_Test8TestBodyEv:_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEE12NewBlockSizeEv.exit.i.i.i.i23

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64: ; preds = %bb.aa
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !43
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(128) %i.by) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit65

_ZN7testing7MessageD2Ev.exit65:                   ; preds = %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.af

bb.ab:                                            ; preds = %bb.w
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit68

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit62
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn13 = phi { ptr, i32 } [ %i.ce, %bb.ad ], [ %i.cd, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.cf = load ptr, ptr %7, align 8, !tbaa !87    ; 3 uses
  %.not.i.i66 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i66, label %_ZN7testing7MessageD2Ev.exit68, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67: ; preds = %bb.ae
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !43
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(128) %i.cf) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit68

_ZN7testing7MessageD2Ev.exit68:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67, %bb.ae, %bb.ab
  %.pn13.pn = phi { ptr, i32 } [ %i.cc, %bb.ab ], [ %.pn13, %bb.ae ], [ %.pn13, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #22
  br label %bb.ah

bb.af:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit65
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !81 ; 4 uses
  %.not.i.i69 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i69, label %_ZN7testing15AssertionResultD2Ev.exit73, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !85 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i70: ; preds = %bb.ag
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !88
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i70
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit73

_ZN7testing15AssertionResultD2Ev.exit73:          ; preds = %bb.af, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.cq = load ptr, ptr %1, align 8, !tbaa !152   ; 2 uses
  %.not7.i = icmp eq ptr %i.cq, null
  br i1 %.not7.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit78, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7testing15AssertionResultD2Ev.exit73, %.lr.ph.i
  %.08.i = phi ptr [ %i.cr, %.lr.ph.i ], [ %i.cq, %_ZN7testing15AssertionResultD2Ev.exit73 ] ; 2 uses
  %i.cr = load ptr, ptr %.08.i, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i) #22
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit78, label %.lr.ph.i

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit78: ; preds = %.lr.ph.i, %_ZN7testing15AssertionResultD2Ev.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.ah:                                            ; preds = %_ZN7testing7MessageD2Ev.exit68, %bb.v
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %_ZN7testing7MessageD2Ev.exit68 ], [ %i.bt, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.u, %bb.f
  %.sroa.093.0 = phi ptr [ null, %bb.ah ], [ null, %bb.u ], [ %i.c, %bb.f ] ; 2 uses
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.ah ], [ %.pn.pn.pn, %bb.u ], [ %i.ar, %bb.f ]
  %i.cs = load ptr, ptr %1, align 8, !tbaa !152   ; 2 uses
  %.not7.i79 = icmp eq ptr %i.cs, null
  br i1 %.not7.i79, label %.loopexit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %bb.ai, %.lr.ph.i80
  %.08.i81 = phi ptr [ %i.ct, %.lr.ph.i80 ], [ %i.cs, %bb.ai ] ; 2 uses
  %i.ct = load ptr, ptr %.08.i81, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i81) #22
  %.not.i82 = icmp eq ptr %i.ct, null
  br i1 %.not.i82, label %.loopexit, label %.lr.ph.i80

.loopexit:                                        ; preds = %.lr.ph.i80, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %.not7.i84 = icmp eq ptr %.sroa.093.0, null
  br i1 %.not7.i84, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit88, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %.loopexit, %.lr.ph.i85
  %.08.i86 = phi ptr [ %i.cu, %.lr.ph.i85 ], [ %.sroa.093.0, %.loopexit ] ; 2 uses
  %i.cu = load ptr, ptr %.08.i86, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i86) #22
  %.not.i87 = icmp eq ptr %i.cu, null
  br i1 %.not.i87, label %_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit88, label %.lr.ph.i85

_ZN4absl12lts_2026052613chunked_queueIlLm2ELm2ESaIlEED2Ev.exit88: ; preds = %.lr.ph.i85, %.loopexit
  resume { ptr, i32 } %.pn13.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestE, i64 16), ptr %i.a, align 8, !tbaa !43
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.i = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 9 uses
  store ptr null, ptr %i.i, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = add i64 %i.k, 16
  %i.m = inttoptr i64 %i.l to ptr                 ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.j, align 8, !tbaa !59
  store i64 10, ptr %i.m, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.b

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.a
  %.pre = load i8, ptr %1, align 8, !tbaa !78, !range !79
  %i.o = trunc nuw i8 %.pre to i1
  br i1 %i.o, label %bb.l, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81   ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.t = phi ptr [ %i.s, %bb.e ], [ @.str.159, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 302, ptr noundef %i.t)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.u = load ptr, ptr %2, align 8, !tbaa !87     ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.u, null
  br i1 %.not.i.i94, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(128) %i.u) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit97

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %i.z, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ab = load ptr, ptr %2, align 8, !tbaa !87    ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i95, label %_ZN7testing7MessageD2Ev.exit97, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96: ; preds = %bb.k
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(128) %i.ab) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit97

_ZN7testing7MessageD2Ev.exit97:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96, %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %.pn, %bb.k ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #22
  br label %bb.p

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !81 ; 4 uses
  %.not.i.i98 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i98, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !85 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !88
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 10, ptr %i.a, align 4, !tbaa !128
  %i.am = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !987
  %i.an = icmp eq i64 %i.am, 10
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit101 unwind label %bb.q

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIliEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.177, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit101 unwind label %bb.q

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit101: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ao = load i8, ptr %4, align 8, !tbaa !78, !range !79, !noundef !80
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.aa, label %bb.r

bb.p:                                             ; preds = %_ZN7testing7MessageD2Ev.exit97, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit97 ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %.lr.ph.i276.preheader

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ad

bb.r:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit101
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !81 ; 2 uses
  %.not.i.i102 = icmp eq ptr %i.as, null
  br i1 %.not.i.i102, label %_ZNK7testing15AssertionResult15failure_messageEv.exit103, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit103

_ZNK7testing15AssertionResult15failure_messageEv.exit103: ; preds = %bb.t, %bb.s
  %i.au = phi ptr [ %i.at, %bb.t ], [ @.str.159, %bb.s ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 303, ptr noundef %i.au)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit103
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.av = load ptr, ptr %5, align 8, !tbaa !87    ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.av, null
  br i1 %.not.i.i104, label %_ZN7testing7MessageD2Ev.exit106, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105: ; preds = %bb.v
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.av) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit106

_ZN7testing7MessageD2Ev.exit106:                  ; preds = %bb.v, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.aa

bb.w:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit109

bb.x:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit103
  %i.ba = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_132ChunkedQueue_ConstFrontBack_Test8TestBodyEv:bb.a

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit151
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bm
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn61 = phi { ptr, i32 } [ %i.eb, %bb.bq ], [ %i.ea, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ec = load ptr, ptr %14, align 8, !tbaa !87   ; 3 uses
  %.not.i.i155 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i155, label %_ZN7testing7MessageD2Ev.exit157, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156: ; preds = %bb.br
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !43
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(128) %i.ec) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit157

_ZN7testing7MessageD2Ev.exit157:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156, %bb.br, %bb.bo
  %.pn61.pn = phi { ptr, i32 } [ %i.dz, %bb.bo ], [ %.pn61, %bb.br ], [ %.pn61, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %bb.bw

bb.bs:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit149, %_ZN7testing7MessageD2Ev.exit154
  %i.eg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !81 ; 4 uses
  %.not.i.i158 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i158, label %_ZN7testing15AssertionResultD2Ev.exit162, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !85 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159: ; preds = %bb.bt
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !88
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit162

_ZN7testing15AssertionResultD2Ev.exit162:         ; preds = %bb.bs, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 12, ptr %i.d, align 4, !tbaa !128
  %i.en = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !990
  %i.eo = icmp eq i64 %i.en, 12
  br i1 %i.eo, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit162
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit165 unwind label %bb.bx

bb.bv:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit162
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIliEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.193, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit165 unwind label %bb.bx

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit165: ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.ep = load i8, ptr %16, align 8, !tbaa !78, !range !79, !noundef !80
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.ch, label %bb.by

bb.bw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit157, %bb.bi
  %.pn61.pn.pn = phi { ptr, i32 } [ %.pn61.pn, %_ZN7testing7MessageD2Ev.exit157 ], [ %i.dq, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.lr.ph.i276.preheader

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.cj

bb.by:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit165
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bz unwind label %bb.cd

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !81 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.et, null
  br i1 %.not.i.i166, label %_ZNK7testing15AssertionResult15failure_messageEv.exit167, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit167

_ZNK7testing15AssertionResult15failure_messageEv.exit167: ; preds = %bb.ca, %bb.bz
  %i.ev = phi ptr [ %i.eu, %bb.ca ], [ @.str.159, %bb.bz ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 310, ptr noundef %i.ev)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit167
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.ew = load ptr, ptr %17, align 8, !tbaa !87   ; 3 uses
  %.not.i.i168 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i168, label %_ZN7testing7MessageD2Ev.exit170, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169: ; preds = %bb.cc
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !43
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(128) %i.ew) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit170

_ZN7testing7MessageD2Ev.exit170:                  ; preds = %bb.cc, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.ch

bb.cd:                                            ; preds = %bb.by
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit173

bb.ce:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit167
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cb
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pn65 = phi { ptr, i32 } [ %i.fc, %bb.cf ], [ %i.fb, %bb.ce ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.fd = load ptr, ptr %17, align 8, !tbaa !87   ; 3 uses
  %.not.i.i171 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i171, label %_ZN7testing7MessageD2Ev.exit173, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %bb.cg
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !43
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(128) %i.fd) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit173

_ZN7testing7MessageD2Ev.exit173:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172, %bb.cg, %bb.cd
  %.pn65.pn = phi { ptr, i32 } [ %i.fa, %bb.cd ], [ %.pn65, %bb.cg ], [ %.pn65, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #22
  br label %bb.cj

bb.ch:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit165, %_ZN7testing7MessageD2Ev.exit170
  %i.fh = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !81 ; 4 uses
  %.not.i.i174 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i174, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9pop_frontEv.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !85 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175: ; preds = %bb.ci
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !88
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 32) #24
  br label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9pop_frontEv.exit

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9pop_frontEv.exit: ; preds = %bb.ch, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.ck

bb.cj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit173, %bb.bx
  %.pn65.pn.pn = phi { ptr, i32 } [ %.pn65.pn, %_ZN7testing7MessageD2Ev.exit173 ], [ %i.er, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.lr.ph.i276.preheader

bb.ck:                                            ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9pop_frontEv.exit, %bb.cm
  %.sroa.68.0378 = phi i64 [ 0, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9pop_frontEv.exit ], [ %i.gf, %bb.cm ] ; 2 uses
  %.sroa.37.sroa.28.0377 = phi ptr [ %i.n, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9pop_frontEv.exit ], [ %.sroa.37.sroa.28.3, %bb.cm ] ; 2 uses
  %.sroa.37.sroa.15.0376 = phi ptr [ %i.m, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9pop_frontEv.exit ], [ %i.gg, %bb.cm ] ; 2 uses
  %.sroa.37.sroa.0.0375 = phi ptr [ %i.i, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE9pop_frontEv.exit ], [ %.sroa.37.sroa.0.3, %bb.cm ] ; 4 uses
  %i.fo = add nuw nsw i64 %.sroa.68.0378, 10
  %i.fp = icmp eq ptr %.sroa.37.sroa.15.0376, %.sroa.37.sroa.28.0377
  br i1 %i.fp, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i182, label %bb.cm

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i182: ; preds = %bb.ck
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.37.sroa.0.0375, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !59
  %i.fs = ptrtoint ptr %.sroa.37.sroa.0.0375 to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %reass.sub = sub i64 %i.ft, %i.fs
  %i.fu = add i64 %reass.sub, -16
  %i.fv = ashr exact i64 %i.fu, 2
  %.sroa.speculated.i.i.i.i.i181 = call i64 @llvm.umin.i64(i64 %i.fv, i64 128) ; 2 uses
  %i.fw = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i181, 3
  %i.fx = add nuw nsw i64 %i.fw, 16
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #26
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.cl:                                            ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i182
  store ptr null, ptr %i.fy, align 8, !tbaa !58
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = add i64 %i.ga, 16
  %i.gc = inttoptr i64 %i.gb to ptr               ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.sroa.speculated.i.i.i.i.i181 ; 2 uses
  store ptr %i.gd, ptr %i.fz, align 8, !tbaa !59
  store ptr %i.fy, ptr %.sroa.37.sroa.0.0375, align 8, !tbaa !58
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %.sroa.37.sroa.0.3 = phi ptr [ %.sroa.37.sroa.0.0375, %bb.ck ], [ %i.fy, %bb.cl ] ; 2 uses
  %.sroa.37.sroa.28.3 = phi ptr [ %.sroa.37.sroa.28.0377, %bb.ck ], [ %i.gd, %bb.cl ] ; 2 uses
  %i.ge = phi ptr [ %.sroa.37.sroa.15.0376, %bb.ck ], [ %i.gc, %bb.cl ] ; 4 uses
  %i.gf = add nuw nsw i64 %.sroa.68.0378, 1       ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  store i64 %i.fo, ptr %i.ge, align 8, !tbaa !67
  %exitcond.not = icmp eq i64 %i.gf, 64
  br i1 %exitcond.not, label %bb.cn, label %bb.ck, !llvm.loop !969

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 10, ptr %i.e, align 4, !tbaa !128
  %i.gh = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !991
  %i.gi = icmp eq i64 %i.gh, 10
  br i1 %i.gi, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit192 unwind label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIliEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit192 unwind label %bb.cq

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit192: ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.gj = load i8, ptr %19, align 8, !tbaa !78, !range !79, !noundef !80
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.da, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %bb.de

bb.cr:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit192
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.cs unwind label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.gm = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !81 ; 2 uses
  %.not.i.i193 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i193, label %_ZNK7testing15AssertionResult15failure_messageEv.exit194, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit194

_ZNK7testing15AssertionResult15failure_messageEv.exit194: ; preds = %bb.ct, %bb.cs
  %i.gp = phi ptr [ %i.go, %bb.ct ], [ @.str.159, %bb.cs ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 316, ptr noundef %i.gp)
          to label %bb.cu unwind label %bb.cx

bb.cu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit194
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.cv unwind label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.gq = load ptr, ptr %20, align 8, !tbaa !87   ; 3 uses
  %.not.i.i195 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i195, label %_ZN7testing7MessageD2Ev.exit197, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196: ; preds = %bb.cv
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !43
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(128) %i.gq) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit197

_ZN7testing7MessageD2Ev.exit197:                  ; preds = %bb.cv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.da

bb.cw:                                            ; preds = %bb.cr
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit200

bb.cx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit194
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cu
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #22
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.pn69 = phi { ptr, i32 } [ %i.gw, %bb.cy ], [ %i.gv, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.gx = load ptr, ptr %20, align 8, !tbaa !87   ; 3 uses
  %.not.i.i198 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i198, label %_ZN7testing7MessageD2Ev.exit200, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199: ; preds = %bb.cz
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !43
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(128) %i.gx) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit200

_ZN7testing7MessageD2Ev.exit200:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199, %bb.cz, %bb.cw
  %.pn69.pn = phi { ptr, i32 } [ %i.gu, %bb.cw ], [ %.pn69, %bb.cz ], [ %.pn69, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i199 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #22
  br label %bb.de

bb.da:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit192, %_ZN7testing7MessageD2Ev.exit197
  %i.hb = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !81 ; 4 uses
  %.not.i.i201 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i201, label %_ZN7testing15AssertionResultD2Ev.exit205, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !85 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i202: ; preds = %bb.db
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !88
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i202
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit205

_ZN7testing15AssertionResultD2Ev.exit205:         ; preds = %bb.da, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i203
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 73, ptr %i.f, align 4, !tbaa !128
  %i.hi = load i64, ptr %i.ge, align 8, !tbaa !67, !noalias !992
  %i.hj = icmp eq i64 %i.hi, 73
  br i1 %i.hj, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit205
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit208 unwind label %bb.df

bb.dd:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit205
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIliEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.196, ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit208 unwind label %bb.df

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit208: ; preds = %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.hk = load i8, ptr %22, align 8, !tbaa !78, !range !79, !noundef !80
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %bb.dp, label %bb.dg

bb.de:                                            ; preds = %_ZN7testing7MessageD2Ev.exit200, %bb.cq
  %.pn69.pn.pn = phi { ptr, i32 } [ %.pn69.pn, %_ZN7testing7MessageD2Ev.exit200 ], [ %i.gl, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %.lr.ph.i276.preheader

bb.df:                                            ; preds = %bb.dd, %bb.dc
  %i.hm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %bb.dr

bb.dg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.dh unwind label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.hn = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !81 ; 2 uses
  %.not.i.i209 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i209, label %_ZNK7testing15AssertionResult15failure_messageEv.exit210, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit210

_ZNK7testing15AssertionResult15failure_messageEv.exit210: ; preds = %bb.di, %bb.dh
  %i.hq = phi ptr [ %i.hp, %bb.di ], [ @.str.159, %bb.dh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 317, ptr noundef %i.hq)
          to label %bb.dj unwind label %bb.dm

bb.dj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit210
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.dk unwind label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.hr = load ptr, ptr %23, align 8, !tbaa !87   ; 3 uses
  %.not.i.i211 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i211, label %_ZN7testing7MessageD2Ev.exit213, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212: ; preds = %bb.dk
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !43
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(128) %i.hr) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit213

_ZN7testing7MessageD2Ev.exit213:                  ; preds = %bb.dk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.dp

bb.dl:                                            ; preds = %bb.dg
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit216

bb.dm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit210
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dn:                                            ; preds = %bb.dj
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #22
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.pn73 = phi { ptr, i32 } [ %i.hx, %bb.dn ], [ %i.hw, %bb.dm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.hy = load ptr, ptr %23, align 8, !tbaa !87   ; 3 uses
  %.not.i.i214 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i214, label %_ZN7testing7MessageD2Ev.exit216, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215: ; preds = %bb.do
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !43
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(128) %i.hy) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit216

_ZN7testing7MessageD2Ev.exit216:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215, %bb.do, %bb.dl
  %.pn73.pn = phi { ptr, i32 } [ %i.hv, %bb.dl ], [ %.pn73, %bb.do ], [ %.pn73, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i215 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #22
  br label %bb.dr

bb.dp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit208, %_ZN7testing7MessageD2Ev.exit213
  %i.ic = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !81 ; 4 uses
  %.not.i.i217 = icmp eq ptr %i.id, null
  br i1 %.not.i.i217, label %_ZN7testing15AssertionResultD2Ev.exit221, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !85 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i218: ; preds = %bb.dq
  %i.ih = load i64, ptr %i.if, align 8, !tbaa !88
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ii) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i218
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit221

_ZN7testing15AssertionResultD2Ev.exit221:         ; preds = %bb.dp, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.ds

bb.dr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit216, %bb.df
  %.pn73.pn.pn = phi { ptr, i32 } [ %.pn73.pn, %_ZN7testing7MessageD2Ev.exit216 ], [ %i.hm, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %.lr.ph.i276.preheader

bb.ds:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit221, %bb.du
  %.sroa.68.1385 = phi i64 [ 64, %_ZN7testing15AssertionResultD2Ev.exit221 ], [ %i.ja, %bb.du ] ; 2 uses
  %.sroa.37.sroa.28.1384 = phi ptr [ %.sroa.37.sroa.28.3, %_ZN7testing15AssertionResultD2Ev.exit221 ], [ %.sroa.37.sroa.28.4, %bb.du ] ; 2 uses
  %.sroa.37.sroa.15.1383 = phi ptr [ %i.gg, %_ZN7testing15AssertionResultD2Ev.exit221 ], [ %i.jb, %bb.du ] ; 2 uses
  %.sroa.37.sroa.0.1382 = phi ptr [ %.sroa.37.sroa.0.3, %_ZN7testing15AssertionResultD2Ev.exit221 ], [ %.sroa.37.sroa.0.4, %bb.du ] ; 4 uses
  %i.ij = add nuw nsw i64 %.sroa.68.1385, 10
  %i.ik = icmp eq ptr %.sroa.37.sroa.15.1383, %.sroa.37.sroa.28.1384
  br i1 %i.ik, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i225, label %bb.du

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i225: ; preds = %bb.ds
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.37.sroa.0.1382, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !59
  %i.in = ptrtoint ptr %.sroa.37.sroa.0.1382 to i64
  %i.io = ptrtoint ptr %i.im to i64
  %reass.sub389 = sub i64 %i.io, %i.in
  %i.ip = add i64 %reass.sub389, -16
  %i.iq = ashr exact i64 %i.ip, 2
  %.sroa.speculated.i.i.i.i.i224 = call i64 @llvm.umin.i64(i64 %i.iq, i64 128) ; 2 uses
  %i.ir = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i224, 3
  %i.is = add nuw nsw i64 %i.ir, 16
  %i.it = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.is) #26
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.dt:                                            ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i225
  store ptr null, ptr %i.it, align 8, !tbaa !58
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = add i64 %i.iv, 16
  %i.ix = inttoptr i64 %i.iw to ptr               ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.sroa.speculated.i.i.i.i.i224 ; 2 uses
  store ptr %i.iy, ptr %i.iu, align 8, !tbaa !59
  store ptr %i.it, ptr %.sroa.37.sroa.0.1382, align 8, !tbaa !58
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dt
  %.sroa.37.sroa.0.4 = phi ptr [ %.sroa.37.sroa.0.1382, %bb.ds ], [ %i.it, %bb.dt ]
  %.sroa.37.sroa.28.4 = phi ptr [ %.sroa.37.sroa.28.1384, %bb.ds ], [ %i.iy, %bb.dt ]
  %i.iz = phi ptr [ %.sroa.37.sroa.15.1383, %bb.ds ], [ %i.ix, %bb.dt ] ; 4 uses
  %i.ja = add nuw nsw i64 %.sroa.68.1385, 1       ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i64 %i.ij, ptr %i.iz, align 8, !tbaa !67
  %exitcond398.not = icmp eq i64 %i.ja, 128
  br i1 %exitcond398.not, label %bb.dv, label %bb.ds, !llvm.loop !978

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i225, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i182
  %lpad.loopexit.split-lp476 = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i276.preheader

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i32 10, ptr %i.g, align 4, !tbaa !128
  %i.jc = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !993
  %i.jd = icmp eq i64 %i.jc, 10
  br i1 %i.jd, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit235 unwind label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIliEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit235 unwind label %bb.dy

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit235: ; preds = %bb.dw, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  %i.je = load i8, ptr %25, align 8, !tbaa !78, !range !79, !noundef !80
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.ei, label %bb.dz

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %bb.em

bb.dz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit235
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ea unwind label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.jh = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !81 ; 2 uses
  %.not.i.i236 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i236, label %_ZNK7testing15AssertionResult15failure_messageEv.exit237, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit237

_ZNK7testing15AssertionResult15failure_messageEv.exit237: ; preds = %bb.eb, %bb.ea
  %i.jk = phi ptr [ %i.jj, %bb.eb ], [ @.str.159, %bb.ea ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 320, ptr noundef %i.jk)
          to label %bb.ec unwind label %bb.ef

bb.ec:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit237
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.ed unwind label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.jl = load ptr, ptr %26, align 8, !tbaa !87   ; 3 uses
  %.not.i.i238 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i238, label %_ZN7testing7MessageD2Ev.exit240, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i239

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i239: ; preds = %bb.ed
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !43
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(128) %i.jl) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit240

_ZN7testing7MessageD2Ev.exit240:                  ; preds = %bb.ed, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.ei

bb.ee:                                            ; preds = %bb.dz
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit243

bb.ef:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit237
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ec
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #22
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.pn77 = phi { ptr, i32 } [ %i.jr, %bb.eg ], [ %i.jq, %bb.ef ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.js = load ptr, ptr %26, align 8, !tbaa !87   ; 3 uses
  %.not.i.i241 = icmp eq ptr %i.js, null
  br i1 %.not.i.i241, label %_ZN7testing7MessageD2Ev.exit243, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242: ; preds = %bb.eh
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !43
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(128) %i.js) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit243

_ZN7testing7MessageD2Ev.exit243:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242, %bb.eh, %bb.ee
  %.pn77.pn = phi { ptr, i32 } [ %i.jp, %bb.ee ], [ %.pn77, %bb.eh ], [ %.pn77, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #22
  br label %bb.em

bb.ei:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit235, %_ZN7testing7MessageD2Ev.exit240
  %i.jw = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !81 ; 4 uses
  %.not.i.i244 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i244, label %_ZN7testing15AssertionResultD2Ev.exit248, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !85 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245: ; preds = %bb.ej
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !88
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kc) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i246

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i246: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i245
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit248

_ZN7testing15AssertionResultD2Ev.exit248:         ; preds = %bb.ei, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store i32 137, ptr %i.h, align 4, !tbaa !128
  %i.kd = load i64, ptr %i.iz, align 8, !tbaa !67, !noalias !994
  %i.ke = icmp eq i64 %i.kd, 137
  br i1 %i.ke, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit248
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit251 unwind label %bb.en

bb.el:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit248
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIliEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %28, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.197, ptr noundef nonnull align 8 dereferenceable(8) %i.iz, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit251 unwind label %bb.en

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit251: ; preds = %bb.ek, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.kf = load i8, ptr %28, align 8, !tbaa !78, !range !79, !noundef !80
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %bb.ex, label %bb.eo

bb.em:                                            ; preds = %_ZN7testing7MessageD2Ev.exit243, %bb.dy
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %_ZN7testing7MessageD2Ev.exit243 ], [ %i.jg, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %.lr.ph.i276.preheader

bb.en:                                            ; preds = %bb.el, %bb.ek
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %bb.fb

bb.eo:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit251
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ep unwind label %bb.et

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.ki = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !81 ; 2 uses
  %.not.i.i252 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i252, label %_ZNK7testing15AssertionResult15failure_messageEv.exit253, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit253

_ZNK7testing15AssertionResult15failure_messageEv.exit253: ; preds = %bb.eq, %bb.ep
  %i.kl = phi ptr [ %i.kk, %bb.eq ], [ @.str.159, %bb.ep ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 321, ptr noundef %i.kl)
          to label %bb.er unwind label %bb.eu

bb.er:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit253
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.es unwind label %bb.ev

bb.es:                                            ; preds = %bb.er
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  %i.km = load ptr, ptr %29, align 8, !tbaa !87   ; 3 uses
  %.not.i.i254 = icmp eq ptr %i.km, null
  br i1 %.not.i.i254, label %_ZN7testing7MessageD2Ev.exit256, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255: ; preds = %bb.es
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !43
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(128) %i.km) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit256

_ZN7testing7MessageD2Ev.exit256:                  ; preds = %bb.es, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.ex

bb.et:                                            ; preds = %bb.eo
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit259

bb.eu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit253
  %i.kr = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_128ChunkedQueue_PushAndPop_Test8TestBodyEv:bb.a
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit230

_ZNK7testing15AssertionResult15failure_messageEv.exit230: ; preds = %bb.dn, %bb.dm
  %i.it = phi ptr [ %i.is, %bb.dn ], [ @.str.159, %bb.dm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 343, ptr noundef %i.it)
          to label %bb.do unwind label %bb.dr

bb.do:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit230
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %bb.do
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.iu = load ptr, ptr %27, align 8, !tbaa !87   ; 3 uses
  %.not.i.i231 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i231, label %_ZN7testing7MessageD2Ev.exit233, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232: ; preds = %bb.dp
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !43
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(128) %i.iu) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit233

_ZN7testing7MessageD2Ev.exit233:                  ; preds = %bb.dp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  br label %bb.du

bb.dq:                                            ; preds = %bb.dl
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit236

bb.dr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit230
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %bb.do
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #22
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pn55 = phi { ptr, i32 } [ %i.ja, %bb.ds ], [ %i.iz, %bb.dr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.jb = load ptr, ptr %27, align 8, !tbaa !87   ; 3 uses
  %.not.i.i234 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i234, label %_ZN7testing7MessageD2Ev.exit236, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235: ; preds = %bb.dt
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !43
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(128) %i.jb) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit236

_ZN7testing7MessageD2Ev.exit236:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235, %bb.dt, %bb.dq
  %.pn55.pn = phi { ptr, i32 } [ %i.iy, %bb.dq ], [ %.pn55, %bb.dt ], [ %.pn55, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #22
  br label %bb.dw

bb.du:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit228, %_ZN7testing7MessageD2Ev.exit233
  %i.jf = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !81 ; 4 uses
  %.not.i.i237 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i237, label %_ZN7testing15AssertionResultD2Ev.exit241, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !85 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i238: ; preds = %bb.dv
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !88
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i239

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i239: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i238
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit241

_ZN7testing15AssertionResultD2Ev.exit241:         ; preds = %bb.du, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  %.not7.i = icmp eq ptr %.sroa.0261.6, null
  br i1 %.not7.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7testing15AssertionResultD2Ev.exit241, %.lr.ph.i
  %.08.i = phi ptr [ %i.jm, %.lr.ph.i ], [ %.sroa.0261.6, %_ZN7testing15AssertionResultD2Ev.exit241 ] ; 2 uses
  %i.jm = load ptr, ptr %.08.i, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i) #22
  %.not.i = icmp eq ptr %i.jm, null
  br i1 %.not.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit, label %.lr.ph.i

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit: ; preds = %.lr.ph.i, %_ZN7testing15AssertionResultD2Ev.exit241
  ret void

bb.dw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit236, %bb.dk
  %.pn55.pn.pn = phi { ptr, i32 } [ %.pn55.pn, %_ZN7testing7MessageD2Ev.exit236 ], [ %i.ip, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.dx

bb.dx:                                            ; preds = %bb.v, %bb.ak, %bb.ay, %bb.dw, %_ZN7testing7MessageD2Ev.exit220, %bb.cv
  %.sroa.0261.3 = phi ptr [ %.sroa.0261.0415, %bb.v ], [ %.sroa.0261.2420, %bb.cv ], [ %.sroa.0261.6, %bb.dw ], [ %.sroa.0261.6, %_ZN7testing7MessageD2Ev.exit220 ], [ %.sroa.0261.5, %bb.ay ], [ %.sroa.0261.5, %bb.ak ] ; 2 uses
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.v ], [ %.pn71, %bb.cv ], [ %.pn55.pn.pn, %bb.dw ], [ %.pn51.pn.pn, %_ZN7testing7MessageD2Ev.exit220 ], [ %.pn82.pn.pn, %bb.ay ], [ %.pn73.pn.pn.pn, %bb.ak ] ; 2 uses
  %.not7.i242 = icmp eq ptr %.sroa.0261.3, null
  br i1 %.not7.i242, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit246, label %.lr.ph.i243

.lr.ph.i243:                                      ; preds = %bb.dx, %.lr.ph.i243
  %.08.i244 = phi ptr [ %i.jn, %.lr.ph.i243 ], [ %.sroa.0261.3, %bb.dx ] ; 2 uses
  %i.jn = load ptr, ptr %.08.i244, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i244) #22
  %.not.i245 = icmp eq ptr %i.jn, null
  br i1 %.not.i245, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit246, label %.lr.ph.i243

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit246: ; preds = %.lr.ph.i243, %.thread285, %bb.dx
  %.pn82.pn.pn.pn.pn289 = phi { ptr, i32 } [ %.pn46.pn.pn, %.thread285 ], [ %.pn82.pn.pn.pn.pn, %bb.dx ], [ %.pn82.pn.pn.pn.pn, %.lr.ph.i243 ]
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn289
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_122ChunkedQueue_Swap_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_122ChunkedQueue_Swap_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_122ChunkedQueue_Swap_TestE, i64 16), ptr %i.a, align 8, !tbaa !43
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122ChunkedQueue_Swap_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_122ChunkedQueue_Swap_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 16 uses
  store ptr null, ptr %i.f, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = add i64 %i.h, 16
  %i.j = inttoptr i64 %i.i to ptr                 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !59
  store i64 4, ptr %i.j, align 8, !tbaa !67
  %i.l = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i110 unwind label %bb.a ; 11 uses

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i110: ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i
  store ptr null, ptr %i.l, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = add i64 %i.n, 16
  %i.p = inttoptr i64 %i.o to ptr                 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.m, align 8, !tbaa !59
  store i64 5, ptr %i.p, align 8, !tbaa !67
  %i.r = ptrtoint ptr %i.q to i64
  %reass.sub = sub i64 %i.r, %i.n
  %i.s = add i64 %reass.sub, -16
  %i.t = ashr exact i64 %i.s, 2
  %.sroa.speculated.i.i.i.i.i109 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 128) ; 2 uses
  %i.u = shl nuw nsw i64 %.sroa.speculated.i.i.i.i.i109, 3
  %i.v = add nuw nsw i64 %i.u, 16
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #26
          to label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12AddTailBlockEv.exit.i.i.i113 unwind label %bb.b ; 4 uses

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12AddTailBlockEv.exit.i.i.i113: ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i110
  store ptr null, ptr %i.w, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = add i64 %i.y, 16
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.speculated.i.i.i.i.i109
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !59
  store ptr %i.w, ptr %i.l, align 8, !tbaa !58
  store i64 6, ptr %i.aa, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.c

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12AddTailBlockEv.exit.i.i.i113
  %i.ac = load i8, ptr %1, align 8, !tbaa !78, !range !79, !noundef !80
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.m, label %bb.d

bb.a:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i310.preheader

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i110
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i305.preheader

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12AddTailBlockEv.exit.i.i.i113
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.d:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.ak = phi ptr [ %i.aj, %bb.f ], [ @.str.159, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 353, ptr noundef %i.ak)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.al = load ptr, ptr %2, align 8, !tbaa !87    ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.al, null
  br i1 %.not.i.i120, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit123

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.aq, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.as = load ptr, ptr %2, align 8, !tbaa !87    ; 3 uses
  %.not.i.i121 = icmp eq ptr %i.as, null
  br i1 %.not.i.i121, label %_ZN7testing7MessageD2Ev.exit123, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122: ; preds = %bb.l
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit123

_ZN7testing7MessageD2Ev.exit123:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #22
  br label %bb.r

bb.m:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !81 ; 4 uses
  %.not.i.i124 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i124, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !85 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !88
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 32) #24
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 5, ptr %i.a, align 4, !tbaa !128
  %i.bd = load i64, ptr %i.p, align 8, !tbaa !67, !noalias !1027
  %i.be = icmp eq i64 %i.bd, 5
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.s

bb.q:                                             ; preds = %bb.o
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.204, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.s

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bf = load i8, ptr %4, align 8, !tbaa !78, !range !79, !noundef !80
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.ac, label %bb.t

bb.r:                                             ; preds = %_ZN7testing7MessageD2Ev.exit123, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit123 ], [ %i.ag, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %.lr.ph.i305.preheader

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.af

bb.t:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_122ChunkedQueue_Swap_Test8TestBodyEv:_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i

_ZN7testing7MessageD2Ev.exit147:                  ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.aq

bb.am:                                            ; preds = %bb.ah
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit150

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit144
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn54 = phi { ptr, i32 } [ %i.cr, %bb.ao ], [ %i.cq, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.cs = load ptr, ptr %8, align 8, !tbaa !87    ; 3 uses
  %.not.i.i148 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i148, label %_ZN7testing7MessageD2Ev.exit150, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149: ; preds = %bb.ap
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !43
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cs) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit150

_ZN7testing7MessageD2Ev.exit150:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149, %bb.ap, %bb.am
  %.pn54.pn = phi { ptr, i32 } [ %i.cp, %bb.am ], [ %.pn54, %bb.ap ], [ %.pn54, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #22
  br label %bb.av

bb.aq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142, %_ZN7testing7MessageD2Ev.exit147
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !81 ; 4 uses
  %.not.i.i151 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i151, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !85 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152: ; preds = %bb.ar
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !88
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i152
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 32) #24
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 4, ptr %i.b, align 4, !tbaa !128
  %i.dd = load i64, ptr %i.j, align 8, !tbaa !67, !noalias !1028
  %i.de = icmp eq i64 %i.dd, 4
  br i1 %i.de, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit158 unwind label %bb.aw

bb.au:                                            ; preds = %bb.as
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.207, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit158 unwind label %bb.aw

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit158: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.df = load i8, ptr %10, align 8, !tbaa !78, !range !79, !noundef !80
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.bg, label %bb.ax

bb.av:                                            ; preds = %_ZN7testing7MessageD2Ev.exit150, %bb.ag
  %.pn54.pn.pn = phi { ptr, i32 } [ %.pn54.pn, %_ZN7testing7MessageD2Ev.exit150 ], [ %i.cg, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.lr.ph.i305.preheader

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bj

bb.ax:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit158
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !81 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i159, label %_ZNK7testing15AssertionResult15failure_messageEv.exit160, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit160

_ZNK7testing15AssertionResult15failure_messageEv.exit160: ; preds = %bb.az, %bb.ay
  %i.dl = phi ptr [ %i.dk, %bb.az ], [ @.str.159, %bb.ay ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 356, ptr noundef %i.dl)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit160
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.dm = load ptr, ptr %11, align 8, !tbaa !87   ; 3 uses
  %.not.i.i161 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i161, label %_ZN7testing7MessageD2Ev.exit163, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162: ; preds = %bb.bb
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(128) %i.dm) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit163

_ZN7testing7MessageD2Ev.exit163:                  ; preds = %bb.bb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ax
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit166

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit160
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.ba
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn58 = phi { ptr, i32 } [ %i.ds, %bb.be ], [ %i.dr, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.dt = load ptr, ptr %11, align 8, !tbaa !87   ; 3 uses
  %.not.i.i164 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i164, label %_ZN7testing7MessageD2Ev.exit166, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165: ; preds = %bb.bf
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !43
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(128) %i.dt) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit166

_ZN7testing7MessageD2Ev.exit166:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165, %bb.bf, %bb.bc
  %.pn58.pn = phi { ptr, i32 } [ %i.dq, %bb.bc ], [ %.pn58, %bb.bf ], [ %.pn58, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #22
  br label %bb.bj

bb.bg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit158, %_ZN7testing7MessageD2Ev.exit163
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !81 ; 4 uses
  %.not.i.i167 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i167, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !85 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168: ; preds = %bb.bh
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !88
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef 32) #24
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.ee = load ptr, ptr %i.l, align 8, !tbaa !58  ; 11 uses
  call void @_ZdlPv(ptr noundef nonnull %i.l) #22
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = add i64 %i.ef, 16
  %i.eh = inttoptr i64 %i.eg to ptr               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit176 unwind label %bb.bk

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit176: ; preds = %bb.bi
  %i.ei = load i8, ptr %13, align 8, !tbaa !78, !range !79, !noundef !80
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.bu, label %bb.bl

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit166, %bb.aw
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn58.pn, %_ZN7testing7MessageD2Ev.exit166 ], [ %i.dh, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.lr.ph.i305.preheader

bb.bk:                                            ; preds = %bb.bi
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !81 ; 2 uses
  %.not.i.i177 = icmp eq ptr %i.em, null
  br i1 %.not.i.i177, label %_ZNK7testing15AssertionResult15failure_messageEv.exit178, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit178

_ZNK7testing15AssertionResult15failure_messageEv.exit178: ; preds = %bb.bn, %bb.bm
  %i.eo = phi ptr [ %i.en, %bb.bn ], [ @.str.159, %bb.bm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 359, ptr noundef %i.eo)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit178
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ep = load ptr, ptr %14, align 8, !tbaa !87   ; 3 uses
  %.not.i.i179 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i179, label %_ZN7testing7MessageD2Ev.exit181, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180: ; preds = %bb.bp
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !43
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(128) %i.ep) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit181

_ZN7testing7MessageD2Ev.exit181:                  ; preds = %bb.bp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bl
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit184

bb.br:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit178
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bo
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn62 = phi { ptr, i32 } [ %i.ev, %bb.bs ], [ %i.eu, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ew = load ptr, ptr %14, align 8, !tbaa !87   ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %bb.bt
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !43
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(128) %i.ew) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit184

_ZN7testing7MessageD2Ev.exit184:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183, %bb.bt, %bb.bq
  %.pn62.pn = phi { ptr, i32 } [ %i.et, %bb.bq ], [ %.pn62, %bb.bt ], [ %.pn62, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %bb.bz

bb.bu:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit176, %_ZN7testing7MessageD2Ev.exit181
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !81 ; 4 uses
  %.not.i.i185 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i185, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !85 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186: ; preds = %bb.bv
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !88
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef 32) #24
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 4, ptr %i.c, align 4, !tbaa !128
  %i.fh = load i64, ptr %i.j, align 8, !tbaa !67, !noalias !1029
  %i.fi = icmp eq i64 %i.fh, 4
  br i1 %i.fi, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit192 unwind label %bb.ca

bb.by:                                            ; preds = %bb.bw
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.204, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit192 unwind label %bb.ca

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit192: ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.fj = load i8, ptr %16, align 8, !tbaa !78, !range !79, !noundef !80
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ck, label %bb.cb

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit184, %bb.bk
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn, %_ZN7testing7MessageD2Ev.exit184 ], [ %i.ek, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.fl

bb.ca:                                            ; preds = %bb.by, %bb.bx
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.cn

bb.cb:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit192
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !81 ; 2 uses
  %.not.i.i193 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i193, label %_ZNK7testing15AssertionResult15failure_messageEv.exit194, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit194

_ZNK7testing15AssertionResult15failure_messageEv.exit194: ; preds = %bb.cd, %bb.cc
  %i.fp = phi ptr [ %i.fo, %bb.cd ], [ @.str.159, %bb.cc ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 360, ptr noundef %i.fp)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit194
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.cf unwind label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.fq = load ptr, ptr %17, align 8, !tbaa !87   ; 3 uses
  %.not.i.i195 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i195, label %_ZN7testing7MessageD2Ev.exit197, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196: ; preds = %bb.cf
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !43
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(128) %i.fq) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit197

_ZN7testing7MessageD2Ev.exit197:                  ; preds = %bb.cf, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.ck
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_122ChunkedQueue_Swap_Test8TestBodyEv:_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i
bb.en:                                            ; preds = %bb.em
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  %i.jq = load ptr, ptr %29, align 8, !tbaa !87   ; 3 uses
  %.not.i.i262 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i262, label %_ZN7testing7MessageD2Ev.exit264, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263: ; preds = %bb.en
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !43
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(128) %i.jq) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit264

_ZN7testing7MessageD2Ev.exit264:                  ; preds = %bb.en, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.es

bb.eo:                                            ; preds = %bb.ej
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit267

bb.ep:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit261
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.eq:                                            ; preds = %bb.em
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #22
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.pn82 = phi { ptr, i32 } [ %i.jw, %bb.eq ], [ %i.jv, %bb.ep ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  %i.jx = load ptr, ptr %29, align 8, !tbaa !87   ; 3 uses
  %.not.i.i265 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i265, label %_ZN7testing7MessageD2Ev.exit267, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266: ; preds = %bb.er
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !43
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(128) %i.jx) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit267

_ZN7testing7MessageD2Ev.exit267:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266, %bb.er, %bb.eo
  %.pn82.pn = phi { ptr, i32 } [ %i.ju, %bb.eo ], [ %.pn82, %bb.er ], [ %.pn82, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i266 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %28) #22
  br label %bb.ev

bb.es:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit259, %_ZN7testing7MessageD2Ev.exit264
  %i.kb = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !81 ; 4 uses
  %.not.i.i268 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i268, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !85 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i270, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i269: ; preds = %bb.et
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !88
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i270

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i270: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i269
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef 32) #24
  br label %bb.eu

bb.eu:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i270, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit275 unwind label %bb.ew

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit275: ; preds = %bb.eu
  %i.ki = load i8, ptr %31, align 8, !tbaa !78, !range !79, !noundef !80
  %i.kj = trunc nuw i8 %i.ki to i1
  br i1 %i.kj, label %bb.fg, label %bb.ex

bb.ev:                                            ; preds = %_ZN7testing7MessageD2Ev.exit267, %bb.ei
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %_ZN7testing7MessageD2Ev.exit267 ], [ %i.jl, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  br label %.lr.ph.i305.preheader

bb.ew:                                            ; preds = %bb.eu
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.ex:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit275
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.ey unwind label %bb.fc

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.kl = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !81 ; 2 uses
  %.not.i.i276 = icmp eq ptr %i.km, null
  br i1 %.not.i.i276, label %_ZNK7testing15AssertionResult15failure_messageEv.exit277, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !85
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit277

_ZNK7testing15AssertionResult15failure_messageEv.exit277: ; preds = %bb.ez, %bb.ey
  %i.ko = phi ptr [ %i.kn, %bb.ez ], [ @.str.159, %bb.ey ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 367, ptr noundef %i.ko)
          to label %bb.fa unwind label %bb.fd

bb.fa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit277
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.fb unwind label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.kp = load ptr, ptr %32, align 8, !tbaa !87   ; 3 uses
  %.not.i.i278 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i278, label %_ZN7testing7MessageD2Ev.exit280, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i279

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i279: ; preds = %bb.fb
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !43
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit280

_ZN7testing7MessageD2Ev.exit280:                  ; preds = %bb.fb, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.fg

bb.fc:                                            ; preds = %bb.ex
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit283

bb.fd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit277
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fa
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #22
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.pn86 = phi { ptr, i32 } [ %i.kv, %bb.fe ], [ %i.ku, %bb.fd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.kw = load ptr, ptr %32, align 8, !tbaa !87   ; 3 uses
  %.not.i.i281 = icmp eq ptr %i.kw, null
  br i1 %.not.i.i281, label %_ZN7testing7MessageD2Ev.exit283, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282: ; preds = %bb.ff
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !43
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(128) %i.kw) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit283

_ZN7testing7MessageD2Ev.exit283:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282, %bb.ff, %bb.fc
  %.pn86.pn = phi { ptr, i32 } [ %i.kt, %bb.fc ], [ %.pn86, %bb.ff ], [ %.pn86, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i282 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #22
  br label %bb.fk

bb.fg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit275, %_ZN7testing7MessageD2Ev.exit280
  %i.la = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !81 ; 4 uses
  %.not.i.i284 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i284, label %_ZN7testing15AssertionResultD2Ev.exit288, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !85 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  %i.le = icmp eq ptr %i.lc, %i.ld
  br i1 %i.le, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285: ; preds = %bb.fh
  %i.lf = load i64, ptr %i.ld, align 8, !tbaa !88
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lg) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i285
  call void @_ZdlPvm(ptr noundef nonnull %i.lb, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit288

_ZN7testing15AssertionResultD2Ev.exit288:         ; preds = %bb.fg, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i286
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  %.not.i = icmp eq ptr %i.ee, null               ; 2 uses
  br i1 %.not.i, label %39, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit288, %bb.fj
  %.014.i = phi ptr [ %i.lh, %bb.fj ], [ %i.ee, %_ZN7testing15AssertionResultD2Ev.exit288 ] ; 3 uses
  %i.lh = load ptr, ptr %.014.i, align 8, !tbaa !58 ; 2 uses
  %i.li = icmp eq ptr %.014.i, %i.ee
  br i1 %i.li, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %.preheader.i
  call void @_ZdlPv(ptr noundef nonnull %.014.i) #22
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %.preheader.i
  %.not12.i = icmp eq ptr %i.lh, null
  br i1 %.not12.i, label %.thread, label %.preheader.i, !llvm.loop !14

.thread:                                          ; preds = %bb.fj
  store ptr null, ptr %i.ee, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

bb.fk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit283, %bb.ew
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %_ZN7testing7MessageD2Ev.exit283 ], [ %i.kk, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %.lr.ph.i305.preheader

39:                                               ; preds = %_ZN7testing15AssertionResultD2Ev.exit288
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  store i8 0, ptr %34, align 8, !tbaa !78
  %40 = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  store ptr null, ptr %40, align 8, !tbaa !189
  %41 = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i8 1, ptr %41, align 8, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %42 unwind label %59

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %38, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.175)
          to label %43 unwind label %61

43:                                               ; preds = %42
  %44 = load ptr, ptr %38, align 8, !tbaa !85
  %45 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %46 = load i64, ptr %45, align 8, !tbaa !101
  store i64 %46, ptr %37, align 8
  %47 = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %44, ptr %47, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, i64 74, ptr nonnull @.str.2, i32 noundef 369, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %37)
          to label %48 unwind label %63

48:                                               ; preds = %43
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %49 unwind label %65

49:                                               ; preds = %48
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #22
  %50 = load ptr, ptr %38, align 8, !tbaa !85     ; 2 uses
  %51 = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %49
  %53 = load i64, ptr %51, align 8, !tbaa !88
  %54 = add i64 %53, 1
  call void @_ZdlPvm(ptr noundef %50, i64 noundef %54) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %55 = load ptr, ptr %35, align 8, !tbaa !87     ; 3 uses
  %.not.i.i289 = icmp eq ptr %55, null
  br i1 %.not.i.i289, label %77, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i290

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i290: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %56 = load ptr, ptr %55, align 8, !tbaa !43
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 8
  %58 = load ptr, ptr %57, align 8
  call void %58(ptr noundef nonnull align 8 dereferenceable(128) %55) #22, !inline_history !0
  br label %77

59:                                               ; preds = %39
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit297

61:                                               ; preds = %42
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

63:                                               ; preds = %43
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %67

65:                                               ; preds = %48
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #22
  br label %67

67:                                               ; preds = %65, %63
  %.pn90 = phi { ptr, i32 } [ %66, %65 ], [ %64, %63 ] ; 2 uses
  %68 = load ptr, ptr %38, align 8, !tbaa !85     ; 2 uses
  %69 = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %67
  %71 = load i64, ptr %69, align 8, !tbaa !88
  %72 = add i64 %71, 1
  call void @_ZdlPvm(ptr noundef %68, i64 noundef %72) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292, %61
  %.pn90.pn = phi { ptr, i32 } [ %62, %61 ], [ %.pn90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292 ], [ %.pn90, %67 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %73 = load ptr, ptr %35, align 8, !tbaa !87     ; 3 uses
  %.not.i.i295 = icmp eq ptr %73, null
  br i1 %.not.i.i295, label %_ZN7testing7MessageD2Ev.exit297, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i296

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %74 = load ptr, ptr %73, align 8, !tbaa !43
  %75 = getelementptr inbounds nuw i8, ptr %74, i64 8
  %76 = load ptr, ptr %75, align 8
  call void %76(ptr noundef nonnull align 8 dereferenceable(128) %73) #22, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit297

_ZN7testing7MessageD2Ev.exit297:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %59
  %.pn90.pn.pn = phi { ptr, i32 } [ %60, %59 ], [ %.pn90.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294 ], [ %.pn90.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i296 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %.lr.ph.i305.preheader

77:                                               ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  %.pr = load ptr, ptr %40, align 8, !tbaa !81    ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr %.pr, align 8, !tbaa !85    ; 2 uses
  %80 = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %78
  %82 = load i64, ptr %80, align 8, !tbaa !88
  %83 = add i64 %82, 1
  call void @_ZdlPvm(ptr noundef %79, i64 noundef %83) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #24
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %.thread, %77, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, %.lr.ph.i
  %.08.i = phi ptr [ %i.lj, %.lr.ph.i ], [ %i.f, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit ] ; 2 uses
  %i.lj = load ptr, ptr %.08.i, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i) #22
  %.not.i298 = icmp eq ptr %i.lj, null
  br i1 %.not.i298, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit, label %.lr.ph.i

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit: ; preds = %.lr.ph.i
  br i1 %.not.i, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit303, label %.lr.ph.i300

.lr.ph.i300:                                      ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit, %.lr.ph.i300
  %.08.i301 = phi ptr [ %i.lk, %.lr.ph.i300 ], [ %i.ee, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit ] ; 2 uses
  %i.lk = load ptr, ptr %.08.i301, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i301) #22
  %.not.i302 = icmp eq ptr %i.lk, null
  br i1 %.not.i302, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit303, label %.lr.ph.i300

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit303: ; preds = %.lr.ph.i300, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit
  ret void

bb.fl:                                            ; preds = %bb.dr, %bb.dd, %bb.cn, %bb.bz
  %.pn90.pn.pn.pn = phi { ptr, i32 } [ %.pn74.pn.pn, %bb.dr ], [ %.pn70.pn.pn, %bb.dd ], [ %.pn66.pn.pn, %bb.cn ], [ %.pn62.pn.pn, %bb.bz ] ; 2 uses
  %.not7.i304 = icmp eq ptr %i.ee, null
  br i1 %.not7.i304, label %.lr.ph.i310.preheader, label %.lr.ph.i305.preheader

.lr.ph.i305.preheader:                            ; preds = %bb.b, %bb.r, %bb.af, %bb.av, %bb.bj, %bb.eh, %bb.ev, %bb.fk, %_ZN7testing7MessageD2Ev.exit297, %bb.fl
  %.pn90.pn.pn.pn545 = phi { ptr, i32 } [ %.pn90.pn.pn.pn, %bb.fl ], [ %i.af, %bb.b ], [ %.pn.pn.pn, %bb.r ], [ %.pn50.pn.pn, %bb.af ], [ %.pn54.pn.pn, %bb.av ], [ %.pn58.pn.pn, %bb.bj ], [ %.pn78.pn.pn, %bb.eh ], [ %.pn82.pn.pn, %bb.ev ], [ %.pn86.pn.pn, %bb.fk ], [ %.pn90.pn.pn, %_ZN7testing7MessageD2Ev.exit297 ] ; 2 uses
  %.sroa.0372.sroa.0.0544 = phi ptr [ %i.f, %bb.fl ], [ %i.f, %bb.b ], [ %i.l, %bb.r ], [ %i.l, %bb.af ], [ %i.l, %bb.av ], [ %i.l, %bb.bj ], [ %i.ee, %bb.eh ], [ %i.ee, %bb.ev ], [ %i.ee, %bb.fk ], [ null, %_ZN7testing7MessageD2Ev.exit297 ] ; 2 uses
  %.sroa.0317.0543 = phi ptr [ %i.ee, %bb.fl ], [ %i.l, %bb.b ], [ %i.f, %bb.r ], [ %i.f, %bb.af ], [ %i.f, %bb.av ], [ %i.f, %bb.bj ], [ %i.f, %bb.eh ], [ %i.f, %bb.ev ], [ %i.f, %bb.fk ], [ %i.f, %_ZN7testing7MessageD2Ev.exit297 ]
  br label %.lr.ph.i305

.lr.ph.i305:                                      ; preds = %.lr.ph.i305.preheader, %.lr.ph.i305
  %.08.i306 = phi ptr [ %i.ll, %.lr.ph.i305 ], [ %.sroa.0317.0543, %.lr.ph.i305.preheader ] ; 2 uses
  %i.ll = load ptr, ptr %.08.i306, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i306) #22
  %.not.i307 = icmp eq ptr %i.ll, null
  br i1 %.not.i307, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit308, label %.lr.ph.i305

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit308: ; preds = %.lr.ph.i305
  %.not7.i309 = icmp eq ptr %.sroa.0372.sroa.0.0544, null
  br i1 %.not7.i309, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit313, label %.lr.ph.i310.preheader

.lr.ph.i310.preheader:                            ; preds = %bb.fl, %bb.a, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit308
  %.pn90.pn.pn.pn.pn550 = phi { ptr, i32 } [ %.pn90.pn.pn.pn545, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit308 ], [ %.pn90.pn.pn.pn, %bb.fl ], [ %i.ae, %bb.a ]
  %.sroa.0372.sroa.0.0452549 = phi ptr [ %.sroa.0372.sroa.0.0544, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit308 ], [ %i.f, %bb.fl ], [ %i.f, %bb.a ]
  br label %.lr.ph.i310

.lr.ph.i310:                                      ; preds = %.lr.ph.i310.preheader, %.lr.ph.i310
  %.08.i311 = phi ptr [ %i.lm, %.lr.ph.i310 ], [ %.sroa.0372.sroa.0.0452549, %.lr.ph.i310.preheader ] ; 2 uses
  %i.lm = load ptr, ptr %.08.i311, align 8, !tbaa !58 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.08.i311) #22
  %.not.i312 = icmp eq ptr %i.lm, null
  br i1 %.not.i312, label %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit313, label %.lr.ph.i310

_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit313: ; preds = %.lr.ph.i310, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit308
  %.pn90.pn.pn.pn.pn551 = phi { ptr, i32 } [ %.pn90.pn.pn.pn545, %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEED2Ev.exit308 ], [ %.pn90.pn.pn.pn.pn550, %.lr.ph.i310 ]
  resume { ptr, i32 } %.pn90.pn.pn.pn.pn551
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIliEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageIliEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIliEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !85     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !88
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.f = load ptr, ptr %5, align 8, !tbaa !85     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !88
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIliEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !85     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !88
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.r = load ptr, ptr %5, align 8, !tbaa !85     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !88
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestE, i64 16), ptr %i.a, align 8, !tbaa !43
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_129ChunkedQueue_ShrinkToFit_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i:
  %1 = alloca %"class.absl::lts_20260526::chunked_queue", align 8 ; 23 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.81", align 4 ; 5 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 13 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %i.e = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %.noexc unwind label %bb.f     ; 6 uses

.noexc:                                           ; preds = %_ZN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEE12NewBlockSizeEv.exit.i.i.i.i
  store ptr null, ptr %i.e, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = add i64 %i.g, 16
  %i.i = inttoptr i64 %i.h to ptr                 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.f, align 8, !tbaa !59
  %i.k = load ptr, ptr %1, align 8, !tbaa !61
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.noexc
  store ptr %i.e, ptr %1, align 8
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8
  %.sroa.56.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.j, ptr %.sroa.56.0..sroa_idx.i.i.i.i, align 8
  br label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !61
  store ptr %i.e, ptr %i.l, align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store ptr %i.e, ptr %i.b, align 8
  store ptr %i.j, ptr %i.d, align 8
  %.pre = load i64, ptr %i.a, align 8, !tbaa !65
  %i.m = add i64 %.pre, 1
  store i64 %i.m, ptr %i.a, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.n, ptr %i.c, align 8, !tbaa !66
  store i64 1, ptr %i.i, align 8, !tbaa !67
  %i.o = load i64, ptr %i.a, align 8, !tbaa !65
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload1.i30 = load ptr, ptr %1, align 8 ; 2 uses
  %.not7.i.i31 = icmp eq ptr %.sroa.0.0.copyload1.i30, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  br i1 %.not7.i.i31, label %.loopexit, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %bb.d, %.lr.ph.i.i32
  %.08.i.i33 = phi ptr [ %i.q, %.lr.ph.i.i32 ], [ %.sroa.0.0.copyload1.i30, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %.08.i.i33, align 8, !tbaa !58 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.08.i.i33) #22
  %.not.i.i34 = icmp eq ptr %i.q, null
  br i1 %.not.i.i34, label %.loopexit, label %.lr.ph.i.i32

.loopexit:                                        ; preds = %.lr.ph.i.i32, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 1, ptr %3, align 4, !alias.scope !1034
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_18ElementsAreMatcherISt5tupleIJiEEEEEclIN4absl12lts_2026052613chunked_queueIlLm0ELm0ESaIlEEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull @.str.172, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
end_hunk_5
