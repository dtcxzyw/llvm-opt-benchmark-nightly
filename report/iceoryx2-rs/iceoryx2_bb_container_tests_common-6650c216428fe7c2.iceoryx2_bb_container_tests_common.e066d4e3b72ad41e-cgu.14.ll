Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_container_tests_common-6650c216428fe7c2.iceoryx2_bb_container_tests_common.e066d4e3b72ad41e-cgu.14?download=true
inline.NumInlined: 222
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00m\00\00\00\09\00\00\00" }>, align 8
@33 = private unnamed_addr constant [73 x i8] c"\12assertion failed: \C0+expr: read_value.b == new_value.b;  value: \C0\04 == \C0\C0\00", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00n\00\00\00\09\00\00\00" }>, align 8
@35 = private unnamed_addr constant [73 x i8] c"\12assertion failed: \C0+expr: read_value.c == new_value.c;  value: \C0\04 == \C0\C0\00", align 1
@36 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00o\00\00\00\09\00\00\00" }>, align 8
@37 = private unnamed_addr constant [77 x i8] c"\12assertion failed: \C0/expr: read_value.d.0 == new_value.d.0;  value: \C0\04 == \C0\C0\00", align 1
@38 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00p\00\00\00\09\00\00\00" }>, align 8
@39 = private unnamed_addr constant [77 x i8] c"\12assertion failed: \C0/expr: read_value.d.1 == new_value.d.1;  value: \C0\04 == \C0\C0\00", align 1
@40 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00q\00\00\00\09\00\00\00" }>, align 8
@41 = private unnamed_addr constant [77 x i8] c"\12assertion failed: \C0/expr: read_value.d.2 == new_value.d.2;  value: \C0\04 == \C0\C0\00", align 1
@42 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00r\00\00\00\09\00\00\00" }>, align 8
@43 = private unnamed_addr constant [77 x i8] c"\12assertion failed: \C0/expr: read_value.d.3 == new_value.d.3;  value: \C0\04 == \C0\C0\00", align 1
@44 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00s\00\00\00\09\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00\87\00\00\00\0A\00\00\00" }>, align 8
@46 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00\98\00\00\00\06\00\00\00" }>, align 8
@47 = private unnamed_addr constant [3 x i8] c"ato", align 1
@48 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00;\00\00\00/\00\00\00" }>, align 8
@49 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00A\00\00\00\05\00\00\00" }>, align 8
@50 = private unnamed_addr constant [69 x i8] c"\12assertion failed: \C0'expr: read_value.a == value.a;  value: \C0\04 == \C0\C0\00", align 1
@51 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00D\00\00\00\05\00\00\00" }>, align 8
@52 = private unnamed_addr constant [69 x i8] c"\12assertion failed: \C0'expr: read_value.b == value.b;  value: \C0\04 == \C0\C0\00", align 1
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00E\00\00\00\05\00\00\00" }>, align 8
@54 = private unnamed_addr constant [69 x i8] c"\12assertion failed: \C0'expr: read_value.c == value.c;  value: \C0\04 == \C0\C0\00", align 1
@55 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00F\00\00\00\05\00\00\00" }>, align 8
@56 = private unnamed_addr constant [73 x i8] c"\12assertion failed: \C0+expr: read_value.d.0 == value.d.0;  value: \C0\04 == \C0\C0\00", align 1
@57 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00G\00\00\00\05\00\00\00" }>, align 8
@58 = private unnamed_addr constant [73 x i8] c"\12assertion failed: \C0+expr: read_value.d.1 == value.d.1;  value: \C0\04 == \C0\C0\00", align 1
@59 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00H\00\00\00\05\00\00\00" }>, align 8
@60 = private unnamed_addr constant [73 x i8] c"\12assertion failed: \C0+expr: read_value.d.2 == value.d.2;  value: \C0\04 == \C0\C0\00", align 1
@61 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00I\00\00\00\05\00\00\00" }>, align 8
@62 = private unnamed_addr constant [73 x i8] c"\12assertion failed: \C0+expr: read_value.d.3 == value.d.3;  value: \C0\04 == \C0\C0\00", align 1
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @13, [16 x i8] c";\00\00\00\00\00\00\00J\00\00\00\05\00\00\00" }>, align 8
@64 = private unnamed_addr constant [53 x i8] c"iceoryx2_bb_container_tests_common::byte_atomic_tests", align 1
@65 = private unnamed_addr constant [55 x i8] c"atomic_memcpy_cannot_be_created_when_sizes_do_not_match", align 1
@66 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @64, [8 x i8] c"5\00\00\00\00\00\00\00", ptr @65, [8 x i8] c"7\00\00\00\00\00\00\00", ptr @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests67___iox2_test_atomic_memcpy_cannot_be_created_when_sizes_do_not_match }>, align 8
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00X\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_CsfYvvZIldtH5_9inventoryNtCslCQgxiHprg6_19iceoryx2_bb_testing8TestCaseNtB4_10ErasedNode6submitCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common }>, align 8
@_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @66, ptr @67, [8 x i8] zeroinitializer }>, align 8
@68 = private unnamed_addr constant [57 x i8] c"new_creates_atomic_memcpy_containing_passed_complex_value", align 1
@69 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @64, [8 x i8] c"5\00\00\00\00\00\00\00", ptr @68, [8 x i8] c"9\00\00\00\00\00\00\00", ptr @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests69___iox2_test_new_creates_atomic_memcpy_containing_passed_complex_value }>, align 8
@_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss0_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @69, ptr @67, [8 x i8] zeroinitializer }>, align 8
@70 = private unnamed_addr constant [47 x i8] c"atomic_memcpy_contains_passed_value_after_write", align 1
@71 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @64, [8 x i8] c"5\00\00\00\00\00\00\00", ptr @70, [8 x i8] c"/\00\00\00\00\00\00\00", ptr @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests59___iox2_test_atomic_memcpy_contains_passed_value_after_write }>, align 8
@_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss1_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @71, ptr @67, [8 x i8] zeroinitializer }>, align 8
@72 = private unnamed_addr constant [55 x i8] c"atomic_memcpy_contains_passed_complex_value_after_write", align 1
@73 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @64, [8 x i8] c"5\00\00\00\00\00\00\00", ptr @72, [8 x i8] c"7\00\00\00\00\00\00\00", ptr @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests67___iox2_test_atomic_memcpy_contains_passed_complex_value_after_write }>, align 8
@_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss2_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @73, ptr @67, [8 x i8] zeroinitializer }>, align 8
@74 = private unnamed_addr constant [57 x i8] c"concurrent_read_without_write_always_returns_correct_data", align 1
@75 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @64, [8 x i8] c"5\00\00\00\00\00\00\00", ptr @74, [8 x i8] c"9\00\00\00\00\00\00\00", ptr @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests69___iox2_test_concurrent_read_without_write_always_returns_correct_data }>, align 8
@_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss3_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @75, ptr @67, [8 x i8] zeroinitializer }>, align 8
@76 = private unnamed_addr constant [36 x i8] c"concurrent_write_does_not_trigger_ub", align 1
@77 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @64, [8 x i8] c"5\00\00\00\00\00\00\00", ptr @76, [8 x i8] c"$\00\00\00\00\00\00\00", ptr @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests48___iox2_test_concurrent_write_does_not_trigger_ub }>, align 8
@_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss4_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @77, ptr @67, [8 x i8] zeroinitializer }>, align 8
@78 = private unnamed_addr constant [45 x i8] c"concurrent_read_and_write_does_not_trigger_ub", align 1
@79 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @64, [8 x i8] c"5\00\00\00\00\00\00\00", ptr @78, [8 x i8] c"-\00\00\00\00\00\00\00", ptr @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests57___iox2_test_concurrent_read_and_write_does_not_trigger_ub }>, align 8
@_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss5_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @79, ptr @67, [8 x i8] zeroinitializer }>, align 8
@80 = private unnamed_addr constant [49 x i8] c"new_creates_atomic_memcpy_containing_passed_value", align 1
@81 = private unnamed_addr constant <{ [8 x i8], [16 x i8], [8 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] zeroinitializer, [16 x i8] undef, [8 x i8] zeroinitializer, [16 x i8] undef, ptr @64, [8 x i8] c"5\00\00\00\00\00\00\00", ptr @80, [8 x i8] c"1\00\00\00\00\00\00\00", ptr @_RNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests61___iox2_test_new_creates_atomic_memcpy_containing_passed_value }>, align 8
@_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss_1__11___INVENTORY = internal global <{ ptr, ptr, [8 x i8] }> <{ ptr @81, ptr @67, [8 x i8] zeroinitializer }>, align 8
@82 = private unnamed_addr constant [15 x i8] c"SizesDoNotMatch", align 1
@83 = private unnamed_addr constant [16 x i8] c"InvalidCharacter", align 1
@84 = private unnamed_addr constant [25 x i8] c"InsertWouldExceedCapacity", align 1
@85 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common }>, align 8
@86 = private unnamed_addr constant [15 x i8] c"LifetimeTracker", align 1
@87 = private unnamed_addr constant [5 x i8] c"value", align 1
@88 = private unnamed_addr constant [18 x i8] c"InsufficientMemory", align 1
@89 = private unnamed_addr constant [29 x i8] c"SystemWideBarrierLimitReached", align 1
@90 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRlNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common }>, align 8
@91 = private unnamed_addr constant [12 x i8] c"UnknownError", align 1
@92 = private unnamed_addr constant [8 x i8] c"\04\00\00\00\00\00\00\00", align 8
@93 = private unnamed_addr constant [42 x i8] c"\0DStaticString<\C0\09> { len: \C0\09, data: \22\C0\03\22 }\00", align 1
@94 = private unnamed_addr constant [8 x i8] c"\06\00\00\00\00\00\00\00", align 8
@95 = private unnamed_addr constant [8 x i8] c"\81\00\00\00\00\00\00\00", align 8
@96 = private unnamed_addr constant [8 x i8] c"\0F\00\00\00\00\00\00\00", align 8
@97 = private unnamed_addr constant [27 x i8] c"StaticString::from<&[u8]>()", align 1
@98 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @97, [8 x i8] c"\1B\00\00\00\00\00\00\00" }>, align 8
@99 = private unnamed_addr constant [77 x i8] c"\15The provided string \22\C03\22 does not fit into the StaticString with capacity \C0\00", align 1
@100 = private unnamed_addr constant [21 x i8] c"InsufficientResources", align 1
@101 = private unnamed_addr constant [15 x i8] c"InvalidSettings", align 1
@102 = private unnamed_addr constant [23 x i8] c"InsufficientPermissions", align 1
@103 = private unnamed_addr constant [16 x i8] c"InvalidGuardSize", align 1
@104 = private unnamed_addr constant [27 x i8] c"ContentionScopeNotSupported", align 1
@105 = private unnamed_addr constant [27 x i8] c"SchedulerPolicyNotSupported", align 1
@106 = private unnamed_addr constant [17 x i8] c"StackSizeTooSmall", align 1
@107 = private unnamed_addr constant [31 x i8] c"ProvidedStackSizeMemoryTooSmall", align 1
@108 = private unnamed_addr constant [39 x i8] c"ProvidedStackMemoryIsNotReadAndWritable", align 1
@109 = private unnamed_addr constant [40 x i8] c"SchedulerPriorityInheritanceNotSupported", align 1
@110 = private unnamed_addr constant [28 x i8] c"ThreadPrioritiesNotSupported", align 1
@111 = private unnamed_addr constant [44 x i8] c"CpuCoreOutsideOfSupportedCpuRangeForAffinity", align 1
@112 = private unnamed_addr constant [41 x i8] c"MaxNumberOfSupportedScopedThreadsExceeded", align 1
@113 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix6thread18ThreadSetNameErrorNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common }>, align 8
@114 = private unnamed_addr constant [18 x i8] c"ThreadSetNameError", align 1
@115 = private unnamed_addr constant [28 x i8] c"Unable to insert byte string", align 1
@116 = private unnamed_addr constant [111 x i8] c"\C0\02 \22\C0h\22 since it contains unsupported unicode points. Only unicode points less than 128 (U+0080) are supported\00", align 1
@117 = private unnamed_addr constant [58 x i8] c"\C0\02 \22\C00\22 since it would exceed the maximum capacity of \C0\01.\00", align 1
@118 = private unnamed_addr constant [45 x i8] c"\C0\02 \22\C0\12\22 since the index \C0\12 is out of bounds.\00", align 1
@119 = private unnamed_addr constant [59 x i8] c"\06From: \C0\05 ::: \C0\02 \22\C0\12\22 since the index \C0\12 is out of bounds.\00", align 1
@120 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"'\00\00\00\00\00\00\00\D3\00\00\00\0D\00\00\00" }>, align 8
@121 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"'\00\00\00\00\00\00\00G\01\00\00\12\00\00\00" }>, align 8
@122 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"'\00\00\00\00\00\00\00\FA\00\00\00\11\00\00\00" }>, align 8
@123 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"'\00\00\00\00\00\00\001\01\00\00&\00\00\00" }>, align 8
@124 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"'\00\00\00\00\00\00\00\98\00\00\00\1E\00\00\00" }>, align 8
@125 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"'\00\00\00\00\00\00\00a\01\00\00\1E\00\00\00" }>, align 8
@llvm.used = appending global [8 x ptr] [ptr @_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests1__6___CTOR, ptr @_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss0_1__6___CTOR, ptr @_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss1_1__6___CTOR, ptr @_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss2_1__6___CTOR, ptr @_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss3_1__6___CTOR, ptr @_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss4_1__6___CTOR, ptr @_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss5_1__6___CTOR, ptr @_RNvNvNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testss_1__6___CTOR], section "llvm.metadata"

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCsbqH9stoieM8_5alloc6string6StringECsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #17
  tail call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXs5_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB6_12StaticStringKj81_ENtNtCs8Chj7Szqq0n_4core4hash4Hash4hashNtNvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic10hash_works10Sha1HasherEB2h_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !18, !noundef !4
  tail call void @_RNvXNvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic10hash_worksNtB2_10Sha1HasherNtNtCs8Chj7Szqq0n_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %.val.i) #17
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj81_ENtB8_6String6retainNCINvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic12retain_worksNtB1P_19StaticStringFactoryE0EB1T_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %.val = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %.not8 = icmp eq i64 %.val, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.first_iter = icmp ult i64 %.val, 130
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj81_ENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj81_ENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit
  %.val.i = phi i64 [ %.val.i13, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj81_ENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit ], [ %.val, %.lr.ph.preheader ] ; 8 uses
  %.sroa.0.09 = phi i64 [ %i.b, %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj81_ENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit ], [ %.val, %.lr.ph.preheader ] ; 4 uses
  %i.b = add i64 %.sroa.0.09, -1                  ; 6 uses
  br i1 %.first_iter, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  %i.e = icmp eq i8 %i.d, 32
  br i1 %i.e, label %bb.d, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj81_ENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit

bb.c:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef 129, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
  %.not5 = icmp ult i64 %.val.i, %i.b
  br i1 %.not5, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj81_ENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %.not.not.i = icmp ugt i64 %.val.i, %i.b
  br i1 %.not.not.i, label %bb.f, label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj81_ENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i64 %.val.i, %.sroa.0.09
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.09
  %i.g = sub nuw i64 %.val.i, %.sroa.0.09
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %i.f, i64 %i.g, i1 false), !alias.scope !27
  %.val.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val.i.i = phi i64 [ %.val.i, %bb.f ], [ %.val.pre.i.i, %bb.g ]
  %i.h = add i64 %.val.i.i, -1                    ; 5 uses
  %i.i = icmp ult i64 %i.h, 129
  br i1 %i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  store i8 0, ptr %i.j, align 1, !alias.scope !27
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !28
  br label %_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj81_ENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef 129, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #18, !noalias !27
  unreachable

_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj81_ENtB7_6String6removeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit: ; preds = %bb.i, %bb.e, %bb.d, %bb.b
  %.val.i13 = phi i64 [ %i.h, %bb.i ], [ %.val.i, %bb.e ], [ %.val.i, %bb.d ], [ %.val.i, %bb.b ]
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs5kzjBmDVxDj_21iceoryx2_bb_container11byte_atomicINtB4_10ByteAtomicNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests11ComplexTypeKj38_E3newB1g_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(57) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 1                ; 18 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.e, i8 0, i64 55, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.g = load i8, ptr %1, align 8, !noalias !39, !noundef !4
  store i8 %i.g, ptr %i.c, align 1, !noalias !39
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i = load i64, ptr %i.h, align 8, !alias.scope !37, !noalias !38, !noundef !4 ; 11 uses
  %i.i = icmp eq i64 %.val2.i, 0
  br i1 %i.i, label %_RINvXs2_NtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testsNtB6_11ComplexTypeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits11atomic_copy10AtomicCopy16___for_each_fieldNCNvMs_NtCs5kzjBmDVxDj_21iceoryx2_bb_container11byte_atomicINtB39_10ByteAtomicB1f_Kj38_E3new0EB8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = add i64 %.val2.i, -1                     ; 3 uses
  %.sroa.2.0.i9.pn.peel.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !noalias !39, !noundef !4
  store i8 %i.l, ptr %.sroa.2.0.i9.pn.peel.ptr.i.i.i, align 1, !noalias !39
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %_RINvXs2_NtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testsNtB6_11ComplexTypeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits11atomic_copy10AtomicCopy16___for_each_fieldNCNvMs_NtCs5kzjBmDVxDj_21iceoryx2_bb_container11byte_atomicINtB39_10ByteAtomicB1f_Kj38_E3new0EB8_.exit, label %.peel.next.i.i.i.preheader

.peel.next.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i
  %i.n = add i64 %.val2.i, -2                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 16
  br i1 %min.iters.check, label %.peel.next.i.i.i.preheader4, label %vector.ph

vector.ph:                                        ; preds = %.peel.next.i.i.i.preheader
  %i.o = call i64 @llvm.umin.i64(i64 %i.n, i64 47)
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.q = and i64 %i.p, 15                         ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = select i1 %i.r, i64 16, i64 %i.q
  %n.vec = sub nsw i64 %i.p, %i.s                 ; 4 uses
  %i.t = add nsw i64 %n.vec, 8
  %i.u = add nsw i64 %n.vec, 9
  %i.v = sub i64 %i.j, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 9
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  %wide.load = load <16 x i8>, ptr %i.z, align 1, !noalias !39
  store <16 x i8> %wide.load, ptr %i.x, align 1, !noalias !39
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %.peel.next.i.i.i.preheader4, label %vector.body, !llvm.loop !32

.peel.next.i.i.i.preheader4:                      ; preds = %vector.body, %.peel.next.i.i.i.preheader
  %.sroa.0.09.idx.in.i.i.i.ph = phi i64 [ 8, %.peel.next.i.i.i.preheader ], [ %i.t, %vector.body ]
  %.sroa.10.08.i.i.i.ph = phi i64 [ 9, %.peel.next.i.i.i.preheader ], [ %i.u, %vector.body ]
  %.sroa.18.06.i.i.i.ph = phi i64 [ %i.j, %.peel.next.i.i.i.preheader ], [ %i.v, %vector.body ]
  br label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %.peel.next.i.i.i.preheader4, %bb.b
  %.sroa.0.09.idx.in.i.i.i = phi i64 [ %.sroa.0.09.idx.i.i.i, %bb.b ], [ %.sroa.0.09.idx.in.i.i.i.ph, %.peel.next.i.i.i.preheader4 ]
  %.sroa.10.08.i.i.i = phi i64 [ %i.ad, %bb.b ], [ %.sroa.10.08.i.i.i.ph, %.peel.next.i.i.i.preheader4 ] ; 2 uses
  %.sroa.18.06.i.i.i = phi i64 [ %i.ac, %bb.b ], [ %.sroa.18.06.i.i.i.ph, %.peel.next.i.i.i.preheader4 ]
  %.sroa.0.09.idx.i.i.i = add nuw nsw i64 %.sroa.0.09.idx.in.i.i.i, 1 ; 3 uses
  %i.ab = icmp eq i64 %.sroa.0.09.idx.i.i.i, 56
  br i1 %i.ab, label %_RINvXs2_NtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testsNtB6_11ComplexTypeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits11atomic_copy10AtomicCopy16___for_each_fieldNCNvMs_NtCs5kzjBmDVxDj_21iceoryx2_bb_container11byte_atomicINtB39_10ByteAtomicB1f_Kj38_E3new0EB8_.exit, label %bb.b

bb.b:                                             ; preds = %.peel.next.i.i.i
  %i.ac = add i64 %.sroa.18.06.i.i.i, -1          ; 2 uses
  %.sroa.0.09.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.09.idx.i.i.i
  %i.ad = add nuw nsw i64 %.sroa.10.08.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.10.08.i.i.i
  %i.af = load i8, ptr %i.ae, align 1, !noalias !39, !noundef !4
  store i8 %i.af, ptr %.sroa.0.09.ptr.i.i.i, align 1, !noalias !39
  %i.ag = icmp eq i64 %i.ac, 0
  br i1 %i.ag, label %_RINvXs2_NtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testsNtB6_11ComplexTypeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits11atomic_copy10AtomicCopy16___for_each_fieldNCNvMs_NtCs5kzjBmDVxDj_21iceoryx2_bb_container11byte_atomicINtB39_10ByteAtomicB1f_Kj38_E3new0EB8_.exit, label %.peel.next.i.i.i, !llvm.loop !33

_RINvXs2_NtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_testsNtB6_11ComplexTypeNtNtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits11atomic_copy10AtomicCopy16___for_each_fieldNCNvMs_NtCs5kzjBmDVxDj_21iceoryx2_bb_container11byte_atomicINtB39_10ByteAtomicB1f_Kj38_E3new0EB8_.exit: ; preds = %.peel.next.i.i.i, %bb.b, %bb.a, %.lr.ph.i.i.i
  %2 = lshr i64 %.val2.i, 56
  %3 = trunc nuw i64 %2 to i8
  %4 = lshr i64 %.val2.i, 48
  %5 = trunc i64 %4 to i8
  %6 = lshr i64 %.val2.i, 40
  %7 = trunc i64 %6 to i8
  %8 = lshr i64 %.val2.i, 32
  %9 = trunc i64 %8 to i8
  %10 = lshr i64 %.val2.i, 24
  %11 = trunc i64 %10 to i8
  %12 = lshr i64 %.val2.i, 16
  %13 = trunc i64 %12 to i8
  %14 = lshr i64 %.val2.i, 8
  %15 = trunc i64 %14 to i8
  %16 = trunc i64 %.val2.i to i8
  %.sroa.2.0.i9.pn.peel.ptr.i11.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ai = load i8, ptr %i.ah, align 2, !noalias !39, !noundef !4
  store i8 %i.ai, ptr %.sroa.2.0.i9.pn.peel.ptr.i11.i.i, align 1, !noalias !39
  %.sroa.2.0.i9.pn.peel.ptr.i13.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %16, ptr %.sroa.2.0.i9.pn.peel.ptr.i13.i.i, align 1, !noalias !39
  %.sroa.0.09.ptr.i19.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  store i8 %15, ptr %.sroa.0.09.ptr.i19.i.i, align 1, !noalias !39
  %.sroa.0.09.ptr.i19.1.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  store i8 %13, ptr %.sroa.0.09.ptr.i19.1.i.i, align 1, !noalias !39
  %.sroa.0.09.ptr.i19.2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  store i8 %11, ptr %.sroa.0.09.ptr.i19.2.i.i, align 1, !noalias !39
  %.sroa.0.09.ptr.i19.3.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 %9, ptr %.sroa.0.09.ptr.i19.3.i.i, align 1, !noalias !39
  %.sroa.0.09.ptr.i19.4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 21
  store i8 %7, ptr %.sroa.0.09.ptr.i19.4.i.i, align 1, !noalias !39
  %.sroa.0.09.ptr.i19.5.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i8 %5, ptr %.sroa.0.09.ptr.i19.5.i.i, align 1, !noalias !39
  %.sroa.0.09.ptr.i19.6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 23
  store i8 %3, ptr %.sroa.0.09.ptr.i19.6.i.i, align 1, !noalias !39
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RINvXs9_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits11atomic_copydNtB6_10AtomicCopy16___for_each_fieldNCNvMs_NtCs5kzjBmDVxDj_21iceoryx2_bb_container11byte_atomicINtB1M_10ByteAtomicNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests11ComplexTypeKj38_E3new0EB2Z_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj, i64 noundef 24, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !42, !noalias !43, !nonnull !4, !noundef !4
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !42, !noalias !43, !nonnull !4, !noundef !4
  %.sroa.2.0.i9.pn.peel.ptr.i.i5.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.ak = load ptr, ptr %.val1.i.i, align 8, !noalias !44, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load i8, ptr %i.al, align 1, !noalias !44, !noundef !4
  store i8 %i.am, ptr %.sroa.2.0.i9.pn.peel.ptr.i.i5.i, align 1, !noalias !44
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_RINvXs2_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits11atomic_copyyNtB6_10AtomicCopy16___for_each_fieldNCNvMs_NtCs5kzjBmDVxDj_21iceoryx2_bb_container11byte_atomicINtB1M_10ByteAtomicNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests11ComplexTypeKj38_E3new0EB2Z_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.an, i64 noundef 40, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #17
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_RINvXs1_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits11atomic_copymNtB6_10AtomicCopy16___for_each_fieldNCNvMs_NtCs5kzjBmDVxDj_21iceoryx2_bb_container11byte_atomicINtB1M_10ByteAtomicNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests11ComplexTypeKj38_E3new0EB2Z_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ao, i64 noundef 48, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #17
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 52
  call void @_RINvXs0_NtCs6KsCSdq2EJ7_29iceoryx2_bb_elementary_traits11atomic_copytNtB6_10AtomicCopy16___for_each_fieldNCNvMs_NtCs5kzjBmDVxDj_21iceoryx2_bb_container11byte_atomicINtB1M_10ByteAtomicNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common17byte_atomic_tests11ComplexTypeKj38_E3new0EB2Z_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.ap, i64 noundef 52, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.a, ptr noundef nonnull align 1 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @_RINvMsm_NtCs8Chj7Szqq0n_4core5arrayAhj38_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtNtCs1xtDLGvwb7z_23iceoryx2_bb_concurrency6atomic8AtomicU8ENCINvMBO_BL_10wrap_mut_1hNvMsw_B1u_B1s_3newE0ECsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull sret([56 x i8]) align 1 captures(address) dereferenceable(56) %i.aq, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(56) %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 0, ptr %0, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden i64 @_RNvMs_NtCs5kzjBmDVxDj_21iceoryx2_bb_container11byte_atomicINtB4_10ByteAtomicyKj8_E4readCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i8, ptr %0 monotonic, align 1
  %.sroa.0.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load atomic i8, ptr %.sroa.0.0.ptr.1 monotonic, align 1
  %.sroa.0.0.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load atomic i8, ptr %.sroa.0.0.ptr.2 monotonic, align 1
  %.sroa.0.0.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.d = load atomic i8, ptr %.sroa.0.0.ptr.3 monotonic, align 1
  %.sroa.0.0.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load atomic i8, ptr %.sroa.0.0.ptr.4 monotonic, align 1
  %.sroa.0.0.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.f = load atomic i8, ptr %.sroa.0.0.ptr.5 monotonic, align 1
  %.sroa.0.0.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.g = load atomic i8, ptr %.sroa.0.0.ptr.6 monotonic, align 1
  %.sroa.0.0.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.h = load atomic i8, ptr %.sroa.0.0.ptr.7 monotonic, align 1
  %.sroa.10.0.insert.ext = zext i8 %i.h to i64
  %.sroa.10.0.insert.shift = shl nuw i64 %.sroa.10.0.insert.ext, 56
  %.sroa.9.0.insert.ext = zext i8 %i.g to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 48
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.10.0.insert.shift, %.sroa.9.0.insert.shift
  %.sroa.8.0.insert.ext = zext i8 %i.f to i64
  %.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.8.0.insert.ext, 40
  %.sroa.8.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.8.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %i.e to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.6.0.insert.ext = zext i8 %i.d to i64
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %.sroa.6.0.insert.ext, 24
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.ext = zext i8 %i.c to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 16
  %.sroa.4.0.insert.ext = zext i8 %i.b to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 8
  %.sroa.4.0.insert.mask = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %i.a to i64
  %.sroa.0.0.insert.mask = or i64 %.sroa.4.0.insert.mask, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.insert = or i64 %.sroa.0.0.insert.mask, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMsn_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj4_E10from_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.c, align 8
  store i8 0, ptr %i.a, align 8
  %i.d = call fastcc noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj4_ENtB7_6String12insert_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #17 ; 2 uses
  %.not = icmp eq i8 %i.d, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.d, ptr %i.e, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMsn_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj4_E10from_c_strCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noundef captures(address, read_provenance) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = load i8, ptr %1, align 1, !noundef !4
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1, !noundef !4
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i8, ptr %i.g, align 1, !noundef !4
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.k = load i8, ptr %i.j, align 1, !noundef !4
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i8, ptr %i.m, align 1, !noundef !4
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.04.0.lcssa8 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !49
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.p, align 4, !noalias !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.q, align 8, !noalias !49
  store i8 0, ptr %i.a, align 8, !noalias !49
  %i.r = call fastcc noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj4_ENtB7_6String12insert_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %.sroa.04.0.lcssa8) #17, !noalias !48 ; 2 uses
  %.not.i = icmp eq i8 %i.r, 2
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.r, ptr %i.s, align 1, !alias.scope !48, !noalias !50
  br label %_RNvMsn_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj4_E10from_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !50
  br label %_RNvMsn_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj4_E10from_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit

_RNvMsn_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj4_E10from_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit: ; preds = %bb.g, %bb.h
  %.sink.i = phi i8 [ 0, %bb.h ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !49
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.u, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMsn_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj4_E10from_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit
  %storemerge = phi i8 [ 1, %bb.i ], [ %.sink.i, %_RNvMsn_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj4_E10from_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common.exit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMsn_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj4_E20from_bytes_truncatedCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.c, align 8
  store i8 0, ptr %i.a, align 8
  %i.d = tail call i64 @llvm.umin.i64(i64 %2, i64 4)
  %i.e = call fastcc noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj4_ENtB7_6String12insert_bytesCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.d) #17 ; 2 uses
  %.not = icmp eq i8 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.e, ptr %i.f, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
end_hunk_0
