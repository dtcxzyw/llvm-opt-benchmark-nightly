Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/execute.execute.3f09b7a32ff94216-cgu.2?download=true
inline.NumInlined: 120
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@1 = private unnamed_addr constant [44 x i8] c"Too many lock readers, cannot safely proceed", align 1
@2 = private unnamed_addr constant [94 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/spin-0.9.9/src/rwlock.rs\00", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"]\00\00\00\00\00\00\00\0D\01\00\00\0D\00\00\00" }>, align 8
@4 = private unnamed_addr constant [17 x i8] c"OutOfSystemMemory", align 1
@5 = private unnamed_addr constant [17 x i8] c"OutOfBoundsGrowth", align 1
@6 = private unnamed_addr constant [17 x i8] c"OutOfBoundsAccess", align 1
@7 = private unnamed_addr constant [17 x i8] c"InvalidMemoryType", align 1
@8 = private unnamed_addr constant [23 x i8] c"InvalidStaticBufferSize", align 1
@9 = private unnamed_addr constant [31 x i8] c"ResourceLimiterDeniedAllocation", align 1
@10 = private unnamed_addr constant [19 x i8] c"MinimumSizeOverflow", align 1
@11 = private unnamed_addr constant [19 x i8] c"MaximumSizeOverflow", align 1
@12 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRyNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@13 = private unnamed_addr constant [9 x i8] c"OutOfFuel", align 1
@14 = private unnamed_addr constant [13 x i8] c"required_fuel", align 1
@15 = private unnamed_addr constant [11 x i8] c"EndOfStream", align 1
@16 = private unnamed_addr constant [12 x i8] c"UnknownError", align 1
@17 = private unnamed_addr constant [17 x i8] c"DisallowedStartFn", align 1
@18 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core9operators9BlockTypeNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@19 = private unnamed_addr constant [20 x i8] c"UnsupportedBlockType", align 1
@20 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types7ValTypeNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@21 = private unnamed_addr constant [20 x i8] c"UnsupportedValueType", align 1
@22 = private unnamed_addr constant [29 x i8] c"BranchTableTargetsOutOfBounds", align 1
@23 = private unnamed_addr constant [23 x i8] c"BranchOffsetOutOfBounds", align 1
@24 = private unnamed_addr constant [20 x i8] c"BlockFuelOutOfBounds", align 1
@25 = private unnamed_addr constant [21 x i8] c"AllocatedTooManySlots", align 1
@26 = private unnamed_addr constant [21 x i8] c"SlotAccessOutOfBounds", align 1
@27 = private unnamed_addr constant [15 x i8] c"SlotOutOfBounds", align 1
@28 = private unnamed_addr constant [26 x i8] c"EmulatedValueStackOverflow", align 1
@29 = private unnamed_addr constant [21 x i8] c"ProviderSliceOverflow", align 1
@30 = private unnamed_addr constant [27 x i8] c"TooManyFuncLocalConstValues", align 1
@31 = private unnamed_addr constant [22 x i8] c"TooManyFunctionResults", align 1
@32 = private unnamed_addr constant [21 x i8] c"TooManyFunctionParams", align 1
@33 = private unnamed_addr constant [21 x i8] c"TooManyLocalVariables", align 1
@34 = private unnamed_addr constant [21 x i8] c"LazyCompilationFailed", align 1
@35 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@36 = private unnamed_addr constant [14 x i8] c"TooManyGlobals", align 1
@37 = private unnamed_addr constant [5 x i8] c"limit", align 1
@38 = private unnamed_addr constant [13 x i8] c"TooManyTables", align 1
@39 = private unnamed_addr constant [16 x i8] c"TooManyFunctions", align 1
@40 = private unnamed_addr constant [15 x i8] c"TooManyMemories", align 1
@41 = private unnamed_addr constant [22 x i8] c"TooManyElementSegments", align 1
@42 = private unnamed_addr constant [19 x i8] c"TooManyDataSegments", align 1
@43 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@44 = private unnamed_addr constant [17 x i8] c"TooManyParameters", align 1
@45 = private unnamed_addr constant [14 x i8] c"TooManyResults", align 1
@46 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt }>, align 8
@47 = private unnamed_addr constant [22 x i8] c"MinAvgBytesPerFunction", align 1
@48 = private unnamed_addr constant [3 x i8] c"avg", align 1
@49 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1VvpiNK3DOA_4wast5error4TextEECs5py4yDLWIja_7execute, [16 x i8] c"(\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCs1VvpiNK3DOA_4wast5error4TextENtNtB7_3fmt5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@50 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs5py4yDLWIja_7execute, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsG258MDvU3F_3std4path7PathBufENtNtB7_3fmt5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs1VvpiNK3DOA_4wast5tokenNtB5_4SpanNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@52 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs1VvpiNK3DOA_4wast5error9ErrorKindNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@53 = private unnamed_addr constant [10 x i8] c"ErrorInner", align 1
@54 = private unnamed_addr constant [4 x i8] c"text", align 1
@55 = private unnamed_addr constant [4 x i8] c"file", align 1
@56 = private unnamed_addr constant [4 x i8] c"span", align 1
@57 = private unnamed_addr constant [4 x i8] c"kind", align 1
@58 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core4trap8TrapCodeNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@59 = private unnamed_addr constant [8 x i8] c"TrapCode", align 1
@60 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@61 = private unnamed_addr constant [7 x i8] c"Message", align 1
@62 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRlNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@63 = private unnamed_addr constant [13 x i8] c"I32ExitStatus", align 1
@64 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs5zeGauAcNNa_10wasmi_core10host_error9HostErrorEL_ENtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@65 = private unnamed_addr constant [4 x i8] c"Host", align 1
@66 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi6engine9resumable22ResumableHostTrapErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@67 = private unnamed_addr constant [17 x i8] c"ResumableHostTrap", align 1
@68 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi6engine9resumable23ResumableOutOfFuelErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@69 = private unnamed_addr constant [18 x i8] c"ResumableOutOfFuel", align 1
@70 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core6global11GlobalErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@71 = private unnamed_addr constant [6 x i8] c"Global", align 1
@72 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs5zeGauAcNNa_10wasmi_core6memory5error11MemoryErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@73 = private unnamed_addr constant [6 x i8] c"Memory", align 1
@74 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs5zeGauAcNNa_10wasmi_core5table5error10TableErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@75 = private unnamed_addr constant [5 x i8] c"Table", align 1
@76 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsefoF4u9kbII_5wasmi6linker11LinkerErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@77 = private unnamed_addr constant [6 x i8] c"Linker", align 1
@78 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsefoF4u9kbII_5wasmi6module11instantiate5error18InstantiationErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@79 = private unnamed_addr constant [13 x i8] c"Instantiation", align 1
@80 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core4fuel9FuelErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@81 = private unnamed_addr constant [4 x i8] c"Fuel", align 1
@82 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi4func5error9FuncErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@83 = private unnamed_addr constant [4 x i8] c"Func", align 1
@84 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsefoF4u9kbII_5wasmi6module4read9ReadErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@85 = private unnamed_addr constant [4 x i8] c"Read", align 1
@86 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs9FmeSmcCnTG_10wasmparser13binary_reader17BinaryReaderErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@87 = private unnamed_addr constant [4 x i8] c"Wasm", align 1
@88 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsefoF4u9kbII_5wasmi6engine10translator5error16TranslationErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@89 = private unnamed_addr constant [11 x i8] c"Translation", align 1
@90 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsefoF4u9kbII_5wasmi6engine6limits6engine19EnforcedLimitsErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@91 = private unnamed_addr constant [10 x i8] c"UserLimits", align 1
@92 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsefoF4u9kbII_5wasmi6limits11LimitsErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@93 = private unnamed_addr constant [20 x i8] c"ImplementationLimits", align 1
@94 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs6kx5fqqPdgs_8wasmi_ir5error5ErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@95 = private unnamed_addr constant [2 x i8] c"Ir", align 1
@96 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtCskhAzXzJZLSo_3wat5ErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@97 = private unnamed_addr constant [3 x i8] c"Wat", align 1
@98 = private unnamed_addr constant [9 x i8] c"RawHandle", align 1
@99 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXss_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZeromENtNtB9_3fmt5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@100 = private unnamed_addr constant [3 x i8] c"key", align 1
@101 = private unnamed_addr constant [17 x i8] c"wasmi::func::Func", align 1
@102 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@103 = private unnamed_addr constant [6 x i8] c"marker", align 1
@104 = private unnamed_addr constant [19 x i8] c"wasmi::table::Table", align 1
@105 = private unnamed_addr constant [21 x i8] c"wasmi::global::Global", align 1
@106 = private unnamed_addr constant [21 x i8] c"wasmi::memory::Memory", align 1
@107 = private unnamed_addr constant [25 x i8] c"wasmi::reftype::ExternRef", align 1
@108 = private unnamed_addr constant [4 x i8] c"None", align 1
@109 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs1VvpiNK3DOA_4wast5error4TextNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@110 = private unnamed_addr constant [4 x i8] c"Some", align 1
@111 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@112 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs1VvpiNK3DOA_4wast5error5ErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@113 = private unnamed_addr constant [4 x i8] c"Wast", align 1
@114 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5py4yDLWIja_7execute, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt }>, align 8
@115 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufENtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@116 = private unnamed_addr constant [2 x i8] c"Io", align 1
@117 = private unnamed_addr constant [3 x i8] c"err", align 1
@118 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs5py4yDLWIja_7execute, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@119 = private unnamed_addr constant [6 x i8] c"Custom", align 1
@120 = private unnamed_addr constant [3 x i8] c"msg", align 1
@121 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXse_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB5_21BinaryReaderErrorKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt }>, align 8
@122 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@123 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionjENtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@124 = private unnamed_addr constant [22 x i8] c"BinaryReaderErrorInner", align 1
@125 = private unnamed_addr constant [7 x i8] c"message", align 1
@126 = private unnamed_addr constant [6 x i8] c"offset", align 1
@127 = private unnamed_addr constant [11 x i8] c"needed_hint", align 1
@128 = private unnamed_addr constant [7 x i8] c"Invalid", align 1
@129 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@130 = private unnamed_addr constant [4 x i8] c"Type", align 1
@131 = private unnamed_addr constant [8 x i8] c"FuncType", align 1
@132 = private unnamed_addr constant [20 x i8] c"DanglingBlockComment", align 1
@133 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRcNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@134 = private unnamed_addr constant [10 x i8] c"Unexpected", align 1
@135 = private unnamed_addr constant [20 x i8] c"InvalidStringElement", align 1
@136 = private unnamed_addr constant [19 x i8] c"InvalidStringEscape", align 1
@137 = private unnamed_addr constant [15 x i8] c"InvalidHexDigit", align 1
@138 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@139 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsj_NtCskKLDkoKarTP_4core3fmtcNtB5_5Debug3fmt }>, align 8
@140 = private unnamed_addr constant [8 x i8] c"Expected", align 1
@141 = private unnamed_addr constant [6 x i8] c"wanted", align 1
@142 = private unnamed_addr constant [5 x i8] c"found", align 1
@143 = private unnamed_addr constant [13 x i8] c"UnexpectedEof", align 1
@144 = private unnamed_addr constant [12 x i8] c"NumberTooBig", align 1
@145 = private unnamed_addr constant [19 x i8] c"InvalidUnicodeValue", align 1
@146 = private unnamed_addr constant [14 x i8] c"LoneUnderscore", align 1
@147 = private unnamed_addr constant [16 x i8] c"ConfusingUnicode", align 1
@148 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCs5py4yDLWIja_7execute }>, align 8
@149 = private unnamed_addr constant [13 x i8] c"InvalidUtf8Id", align 1
@150 = private unnamed_addr constant [7 x i8] c"EmptyId", align 1
@151 = private unnamed_addr constant [15 x i8] c"EmptyAnnotation", align 1
@152 = private unnamed_addr constant [4 x i8] c"Span", align 1
@153 = private unnamed_addr constant [28 x i8] c"failed to write whole buffer", align 1
@154 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8] }> <{ ptr @153, [9 x i8] c"\1C\00\00\00\00\00\00\00\17", [7 x i8] undef }>, align 8
@155 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/io/write.rs\00", align 1
@156 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @155, [16 x i8] c"L\00\00\00\00\00\00\00\DC\00\00\00$\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File6createRNtNtCsexYYUdYSQU6_5alloc6string6StringECs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i128 79537652246452167413109620736, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.c, align 8, !noundef !5
  call void @_RNvMsj_NtCsG258MDvU3F_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1C_10DefinitionNtNtB1E_7limiter11StoreLimitsENtB1i_14LeafOrInternalE11search_treeB1A_ECs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val51 = load i64, ptr %3, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %i.q, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.p, %bb.e ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 538
  %i.c = load i16, ptr %i.b, align 2, !noundef !5 ; 2 uses
  %i.d = zext i16 %i.c to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %i.f = icmp eq i16 %i.c, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i83, i64 8 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.8.0.i82, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.03.i83 = phi ptr [ %i.g, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.8.0.i82 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %.val6.i = load i64, ptr %.sroa.0.03.i83, align 8, !noundef !5
  %i.j = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val51, i64 %.val6.i)
  switch i8 %i.j, label %bb.d [
    i8 -1, label %._crit_edge
    i8 0, label %.loopexit
    i8 1, label %bb.c
  ]

bb.d:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %.sroa.8.0.i82, %.lr.ph ] ; 3 uses
  %i.k = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.k, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph
  %.sink = phi i64 [ %.sroa.3.0, %.lr.ph ], [ 0, %._crit_edge ]
  %.sroa.4.0.i.ph.lcssa.sink = phi i64 [ %.sroa.8.0.i82, %.lr.ph ], [ %.sroa.4.0.i.ph, %._crit_edge ]
  %storemerge = phi i64 [ 0, %.lr.ph ], [ 1, %._crit_edge ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.l, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.ph.lcssa.sink, ptr %.sroa.530.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 544
  %i.n = icmp samesign ult i64 %.sroa.4.0.i.ph, 12
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.4.0.i.ph
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = add i64 %.sroa.3.0, -1
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderNtB1E_3SymNtB1i_14LeafOrInternalE11search_treeNtB1C_11LenOrderStrECs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = icmp ult i64 %4, 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.618.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.b, label %.split.us.i.preheader.us, label %.split.i.preheader

.split.us.i.preheader.us:                         ; preds = %bb.a, %bb.e
  %.sroa.3.0.us = phi i64 [ %i.ab, %bb.e ], [ %2, %bb.a ] ; 4 uses
  %.sroa.0.0.us = phi ptr [ %i.aa, %bb.e ], [ %1, %bb.a ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 230
  %i.e = load i16, ptr %i.d, align 2, !noalias !19, !noundef !5 ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %.idx163 = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 %.idx163
  %i.h = icmp eq i16 %i.e, 0
  br i1 %i.h, label %.loopexit.us, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCs5py4yDLWIja_7execute.exit.us.i.us

.split.us.i.us:                                   ; preds = %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us
  %i.i = icmp eq ptr %i.j, %i.g
  br i1 %i.i, label %.loopexit.us, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCs5py4yDLWIja_7execute.exit.us.i.us

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCs5py4yDLWIja_7execute.exit.us.i.us: ; preds = %.split.us.i.preheader.us, %.split.us.i.us
  %.sroa.0.01.us.i.us160 = phi ptr [ %i.j, %.split.us.i.us ], [ %.sroa.0.0.us, %.split.us.i.preheader.us ] ; 3 uses
  %.sroa.8.0.us.i.us159 = phi i64 [ %i.k, %.split.us.i.us ], [ 0, %.split.us.i.preheader.us ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.01.us.i.us160, i64 16 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.us.i.us159, 1
  %.val.us.i.us = load ptr, ptr %.sroa.0.01.us.i.us160, align 8, !noalias !19, !nonnull !5, !noundef !5
  %i.l = getelementptr i8, ptr %.sroa.0.01.us.i.us160, i64 8
  %.val6.us.i.us = load i64, ptr %i.l, align 8, !noalias !19, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19
  %i.m = tail call i8 @llvm.ucmp.i8.i64(i64 %4, i64 %.val6.us.i.us)
  %i.n = icmp eq i64 %4, %.val6.us.i.us
  br i1 %i.n, label %bb.b, label %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us

bb.b:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCs5py4yDLWIja_7execute.exit.us.i.us
  %i.o = getelementptr inbounds nuw i8, ptr %.val.us.i.us, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %4
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs5py4yDLWIja_7execute(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.c, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.p)
  %.sroa.0.0.copyload.i.us.i.us = load ptr, ptr %i.a, align 8, !noalias !22 ; 2 uses
  %.sroa.517.0.copyload.i.us.i.us = load ptr, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !22 ; 2 uses
  %.sroa.618.0.copyload.i.us.i.us = load i64, ptr %.sroa.618.0..sroa_idx.i.i, align 8, !noalias !22 ; 3 uses
  %.sroa.8.0.copyload.i.us.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !22 ; 2 uses
  %umax.i.us.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload.i.us.i.us, i64 %.sroa.618.0.copyload.i.us.i.us)
  %exitcond.not.i.us.i.us150.not = icmp ult i64 %.sroa.618.0.copyload.i.us.i.us, %.sroa.8.0.copyload.i.us.i.us
  br i1 %exitcond.not.i.us.i.us150.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5py4yDLWIja_7execute.exit.i.us.i.us.preheader, label %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5py4yDLWIja_7execute.exit.i.us.i.us.preheader: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.517.0.copyload.i.us.i.us) ]
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5py4yDLWIja_7execute.exit.i.us.i.us

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5py4yDLWIja_7execute.exit.i.us.i.us
  %i.q = add i64 %.sroa.618.0.i.us.i.us151, 1     ; 2 uses
  %exitcond.not.i.us.i.us = icmp eq i64 %i.q, %umax.i.us.i.us
  br i1 %exitcond.not.i.us.i.us, label %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5py4yDLWIja_7execute.exit.i.us.i.us

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5py4yDLWIja_7execute.exit.i.us.i.us: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5py4yDLWIja_7execute.exit.i.us.i.us.preheader, %bb.c
  %.sroa.618.0.i.us.i.us151 = phi i64 [ %i.q, %bb.c ], [ %.sroa.618.0.copyload.i.us.i.us, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5py4yDLWIja_7execute.exit.i.us.i.us.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us.i.us, i64 %.sroa.618.0.i.us.i.us151
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.517.0.copyload.i.us.i.us, i64 %.sroa.618.0.i.us.i.us151
  %i.t = load i8, ptr %i.r, align 1, !noundef !5  ; 2 uses
  %i.u = load i8, ptr %i.s, align 1, !noundef !5  ; 2 uses
  %i.v = icmp eq i8 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.d:                                             ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs5py4yDLWIja_7execute.exit.i.us.i.us
  %i.w = tail call i8 @llvm.ucmp.i8.i8(i8 %i.t, i8 %i.u)
  br label %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us

_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us: ; preds = %bb.d, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCs5py4yDLWIja_7execute.exit.us.i.us
  %.sroa.0.0.i7.us.i.us = phi i8 [ %i.w, %bb.d ], [ %i.m, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCs5py4yDLWIja_7execute.exit.us.i.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19
  switch i8 %.sroa.0.0.i7.us.i.us, label %.split16.us.i [
    i8 -1, label %.loopexit.us
    i8 0, label %.split83.us
    i8 1, label %.split.us.i.us
  ]

bb.e:                                             ; preds = %.loopexit.us
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 232
  %i.y = icmp samesign ult i64 %.sroa.4.0.i.ph.ph.us, 12
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.4.0.i.ph.ph.us
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5
  %i.ab = add i64 %.sroa.3.0.us, -1
  br label %.split.us.i.preheader.us

.loopexit.us:                                     ; preds = %.split.us.i.us, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us, %.split.us.i.preheader.us
  %.sroa.4.0.i.ph.ph.us = phi i64 [ %i.f, %.split.us.i.preheader.us ], [ %i.f, %.split.us.i.us ], [ %.sroa.8.0.us.i.us159, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us ] ; 3 uses
  %i.ac = icmp eq i64 %.sroa.3.0.us, 0
  br i1 %i.ac, label %.split83.us, label %bb.e

.split.i.preheader:                               ; preds = %bb.a, %bb.g
  %.sroa.3.0 = phi i64 [ %i.ax, %bb.g ], [ %2, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.aw, %bb.g ], [ %1, %bb.a ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 230
  %i.ae = load i16, ptr %i.ad, align 2, !noalias !19, !noundef !5 ; 2 uses
  %i.af = zext i16 %i.ae to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.af, 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %.idx
  %i.ah = icmp eq i16 %i.ae, 0
  br i1 %i.ah, label %.loopexit55, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCs5py4yDLWIja_7execute.exit.i

.split.i:                                         ; preds = %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i
  %i.ai = icmp eq ptr %i.aj, %i.ag
  br i1 %i.ai, label %.loopexit55, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCs5py4yDLWIja_7execute.exit.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCs5py4yDLWIja_7execute.exit.i: ; preds = %.split.i.preheader, %.split.i
  %.sroa.0.01.i148 = phi ptr [ %i.aj, %.split.i ], [ %.sroa.0.0, %.split.i.preheader ] ; 3 uses
  %.sroa.8.0.i147 = phi i64 [ %i.ak, %.split.i ], [ 0, %.split.i.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i148, i64 16 ; 2 uses
  %i.ak = add nuw nsw i64 %.sroa.8.0.i147, 1
  %.val.i = load ptr, ptr %.sroa.0.01.i148, align 8, !noalias !19, !nonnull !5, !noundef !5
  %i.al = getelementptr i8, ptr %.sroa.0.01.i148, i64 8
  %.val6.i = load i64, ptr %i.al, align 8, !noalias !19, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19
  %i.am = tail call i8 @llvm.ucmp.i8.i64(i64 %4, i64 %.val6.i)
  %i.an = icmp eq i64 %4, %.val6.i
  br i1 %i.an, label %bb.f, label %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i

bb.f:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCs5py4yDLWIja_7execute.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.ap = tail call i32 @memcmp(ptr nonnull readonly %3, ptr nonnull readonly %i.ao, i64 %4), !alias.scope !23
  %i.aq = tail call i8 @llvm.scmp.i8.i32(i32 %i.ap, i32 0)
  br label %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i

_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19
  br label %.split83.us

_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.f, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCs5py4yDLWIja_7execute.exit.i
  %.sroa.0.0.i7.i = phi i8 [ %i.aq, %bb.f ], [ %i.am, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCsg06799QCvd1_17wasmi_collections15string_interner6detail8LenOrderEENtNtNtB8_6traits8iterator8Iterator4nextCs5py4yDLWIja_7execute.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19
  switch i8 %.sroa.0.0.i7.i, label %.split16.us.i [
    i8 -1, label %.loopexit55
    i8 0, label %.split83.us
    i8 1, label %.split.i
  ]

.split16.us.i:                                    ; preds = %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us
  unreachable

.loopexit55:                                      ; preds = %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i, %.split.i, %.split.i.preheader
  %.sroa.4.0.i.ph.ph56 = phi i64 [ %i.af, %.split.i.preheader ], [ %.sroa.8.0.i147, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i ], [ %i.af, %.split.i ] ; 3 uses
  %i.ar = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.ar, label %.split83.us, label %bb.g

.split83.us:                                      ; preds = %.loopexit55, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i, %.loopexit.us, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread.i
  %.us-phi85.sink = phi ptr [ %.sroa.0.0, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i ], [ %.sroa.0.0.us, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us ], [ %.sroa.0.0.us, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread.i ], [ %.sroa.0.0.us, %.loopexit.us ], [ %.sroa.0.0, %.loopexit55 ]
  %.sink = phi i64 [ %.sroa.3.0, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i ], [ %.sroa.3.0.us, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us ], [ %.sroa.3.0.us, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread.i ], [ 0, %.loopexit.us ], [ 0, %.loopexit55 ]
  %.us-phi84.sink = phi i64 [ %.sroa.8.0.i147, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i ], [ %.sroa.8.0.us.i.us159, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us ], [ %.sroa.8.0.us.i.us159, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread.i ], [ %.sroa.4.0.i.ph.ph.us, %.loopexit.us ], [ %.sroa.4.0.i.ph.ph56, %.loopexit55 ]
  %storemerge = phi i64 [ 0, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.i ], [ 0, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.us.i.us ], [ 0, %_RNvXs6_NtNtCsg06799QCvd1_17wasmi_collections15string_interner6detailNtB5_11LenOrderStrNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp.exit.thread.i ], [ 1, %.loopexit.us ], [ 1, %.loopexit55 ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.us-phi85.sink, ptr %i.as, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.us-phi84.sink, ptr %.sroa.530.0..sroa_idx, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %.loopexit55
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 232
  %i.au = icmp samesign ult i64 %.sroa.4.0.i.ph.ph56, 12
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.4.0.i.ph.ph56
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !5, !noundef !5
  %i.ax = add i64 %.sroa.3.0, -1
  br label %.split.i.preheader
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5py4yDLWIja_7execute(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !noalias !28, !noundef !5 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.e, null
  br i1 %.not.i.i5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.i, %.lr.ph ], [ %i.e, %bb.a ] ; 3 uses
  %.sroa.0.07 = phi ptr [ %i.f, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.3.06 = phi i64 [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = add i64 %.sroa.3.06, 1                   ; 2 uses
  %.not.i = icmp eq i64 %.sroa.3.06, 0
  %..i = select i1 %.not.i, i64 320, i64 416
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.07, i64 noundef %..i, i64 noundef 8) #16, !noalias !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !noalias !28, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.g, %.lr.ph ]
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.f, %.lr.ph ]
  %.not.i3 = icmp eq i64 %.sroa.3.0.lcssa, 0
  %..i4 = select i1 %.not.i3, i64 320, i64 416
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %..i4, i64 noundef 8) #16, !noalias !29
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs5py4yDLWIja_7execute(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 318
  %i.g = load i16, ptr %i.f, align 2, !noundef !5
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.039 = phi ptr [ %i.k, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.5.038 = phi i64 [ %i.ac, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !noalias !38, !noundef !5 ; 4 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.l = zext i16 %i.ae to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.l, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.ac, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.k, %._crit_edge.loopexit ] ; 3 uses
  %i.m = icmp eq i64 %.sroa.5.0.lcssa, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.n = add nuw nsw i64 %.sroa.8.0.lcssa, 1
  br label %_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs5py4yDLWIja_7execute.exit

bb.c:                                             ; preds = %._crit_edge
  %i.o = icmp samesign ult i64 %.sroa.8.0.lcssa, 11
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 328
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %.sroa.8.0.lcssa ; 2 uses
  %xtraiter = and i64 %.sroa.5.0.lcssa, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.017.0.in.i.prol = phi ptr [ %i.r, %.prol.preheader ], [ %i.q, %bb.c ]
  %.sroa.019.0.in.i.prol = phi i64 [ %.sroa.019.0.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.019.0.i.prol = add i64 %.sroa.019.0.in.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.prol = load ptr, ptr %.sroa.017.0.in.i.prol, align 8, !noalias !39, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.prol, i64 320 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !37

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.sroa.017.0.i.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.sroa.017.0.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.unr = phi ptr [ %i.q, %bb.c ], [ %i.r, %.prol.preheader ]
  %.sroa.019.0.in.i.unr = phi i64 [ %.sroa.5.0.lcssa, %bb.c ], [ %.sroa.019.0.i.prol, %.prol.preheader ]
  %i.s = icmp ult i64 %.sroa.5.0.lcssa, 8
  br i1 %i.s, label %_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs5py4yDLWIja_7execute.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i = phi ptr [ %i.ab, %.new ], [ %.sroa.017.0.in.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i = phi i64 [ %.sroa.019.0.i.7, %.new ], [ %.sroa.019.0.in.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i = load ptr, ptr %.sroa.017.0.in.i, align 8, !noalias !39, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 320
  %.sroa.017.0.i.1 = load ptr, ptr %i.t, align 8, !noalias !39, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.1, i64 320
  %.sroa.017.0.i.2 = load ptr, ptr %i.u, align 8, !noalias !39, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.2, i64 320
  %.sroa.017.0.i.3 = load ptr, ptr %i.v, align 8, !noalias !39, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.3, i64 320
  %.sroa.017.0.i.4 = load ptr, ptr %i.w, align 8, !noalias !39, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.4, i64 320
  %.sroa.017.0.i.5 = load ptr, ptr %i.x, align 8, !noalias !39, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.5, i64 320
  %.sroa.017.0.i.6 = load ptr, ptr %i.y, align 8, !noalias !39, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.6, i64 320
  %.sroa.019.0.i.7 = add i64 %.sroa.019.0.in.i, -8 ; 2 uses
  %.sroa.017.0.i.7 = load ptr, ptr %i.z, align 8, !noalias !39, !nonnull !5, !noundef !5 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.019.0.i.7, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.7, i64 320
  br i1 %i.aa, label %_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs5py4yDLWIja_7execute.exit, label %.new

_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs5py4yDLWIja_7execute.exit: ; preds = %.prol.loopexit, %.new, %bb.b
  %.sroa.7.0 = phi i64 [ %i.n, %bb.b ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.029 = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %.sroa.017.0.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.7, %.new ]
  store ptr %.sroa.0.029, ptr %0, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.lcssa, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.621.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.ac = add i64 %.sroa.5.038, 1                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 316
  %i.ae = load i16, ptr %i.ad, align 4, !noalias !38 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.5.038, 0
  %..i = select i1 %.not.i, i64 320, i64 416
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039, i64 noundef %..i, i64 noundef 8) #16, !noalias !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 318
  %i.ag = load i16, ptr %i.af, align 2, !noundef !5
  %i.ah = icmp ult i16 %i.ae, %i.ag
  br i1 %i.ah, label %._crit_edge.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %.not.i33 = icmp eq i64 %.sroa.5.038, 0
  %..i34 = select i1 %.not.i33, i64 320, i64 416
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039, i64 noundef %..i34, i64 noundef 8) #16, !noalias !40
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs5py4yDLWIja_7execute.exit, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtCsefoF4u9kbII_5wasmi6linker9ImportKeyINtB1U_10DefinitionNtNtB1W_7limiter11StoreLimitsENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs5py4yDLWIja_7execute(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !45, !noundef !5 ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.d, null
  br i1 %.not.i.i5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi ptr [ %i.g, %.lr.ph ], [ %i.d, %bb.a ] ; 3 uses
  %.sroa.0.07 = phi ptr [ %i.e, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.3.06 = phi i64 [ %i.f, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
end_hunk_0
