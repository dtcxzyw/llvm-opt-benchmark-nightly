inline.NumInlined: 1116
inline.NumDeleted: 605
begin_hunk_0
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs9rVkZwOUgsI_13deltalake_aws, ptr @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtCsjyY8HP3IvQ6_12object_store4path4PathE5force0E0Cs9rVkZwOUgsI_13deltalake_aws }>, align 8
@1 = private unnamed_addr constant [77 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/std/src/sync/once.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\DB\00\00\00\14\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0E0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs9rVkZwOUgsI_13deltalake_aws, ptr @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtNtCsonPGffhQyS_5regex5regex6string5RegexE5force0E0Cs9rVkZwOUgsI_13deltalake_aws }>, align 8
@4 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7970280715115469057 to ptr), ptr inttoptr (i64 1385585634162845069 to ptr) }>, align 8
@5 = private unnamed_addr constant [22 x i8] c"crates/aws/src/lib.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\15\00\00\00\00\00\00\00\A6\02\00\00\11\00\00\00" }>, align 8
@7 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheECs9rVkZwOUgsI_13deltalake_aws, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsp_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identityNtB5_19SharedIdentityCacheNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs0_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identityNtB5_19SharedIdentityCacheNtB5_21ResolveCachedIdentity23resolve_cached_identity, ptr @_RNvYNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheNtB4_21ResolveCachedIdentity27validate_base_client_configCs9rVkZwOUgsI_13deltalake_aws, ptr @_RNvYNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheNtB4_21ResolveCachedIdentity21validate_final_configCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@8 = private unnamed_addr constant [80 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/core/src/str/pattern.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"O\00\00\00\00\00\00\00\E5\05\00\00\14\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"O\00\00\00\00\00\00\00\E5\05\00\00!\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"O\00\00\00\00\00\00\00\D9\05\00\00!\00\00\00" }>, align 8
@12 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@13 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @12, [24 x i8] zeroinitializer }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\00\DB\00\00\001\00\00\00" }>, align 8
@15 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/object_store-0.12.5/src/util.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"d\00\00\00\00\00\00\00\7F\00\00\00,\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"d\00\00\00\00\00\00\00\80\00\00\00'\00\00\00" }>, align 8
@18 = private unnamed_addr constant [56 x i8] c"\11field with name '\C0#' exists, but is not of type number\00", align 1
@19 = private unnamed_addr constant [32 x i8] c"\1Dconversion to number failed, \C0\00", align 1
@_RNvNCNKNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { i64, i8, [7 x i8] }
@_RNvNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@20 = private unnamed_addr constant [10 x i8] c"_delta_log", align 1
@21 = private unnamed_addr constant [30 x i8] c"(\\d{20})\\.(json|checkpoint).*$", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\15\00\00\00\00\00\00\00\F9\02\00\00D\00\00\00" }>, align 8
@23 = private unnamed_addr constant [10 x i8] c"expireTime", align 1
@24 = private unnamed_addr constant [37 x i8] c"\18mandatory string field '\C0\09' missing\00", align 1
@25 = private unnamed_addr constant [64 x i8] c"\18mandatory string field '\C0\1F' exists, but is not a string: \C1 \00\80`\00", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\15\00\00\00\00\00\00\00\FF\02\00\00)\00\00\00" }>, align 8
@27 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-1.12.3/src/regex/string.rs\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"e\00\00\00\00\00\00\00\17\06\00\00\17\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\15\00\00\00\00\00\00\00\FF\02\00\00C\00\00\00" }>, align 8
@30 = private unnamed_addr constant [23 x i8] c"DELTA_DYNAMO_TABLE_NAME", align 1
@31 = private unnamed_addr constant [37 x i8] c"DELTA_DYNAMO_MAX_ELAPSED_REQUEST_TIME", align 1
@32 = private unnamed_addr constant [25 x i8] c"DELTA_DYNAMO_BILLING_MODE", align 1
@33 = private unnamed_addr constant [63 x i8] c":invalid log file name: can't extract version number from '\C0\01'\00", align 1
@34 = private unnamed_addr constant <{ [1 x i8], [1 x i8] }> <{ [1 x i8] c"\13", [1 x i8] undef }>, align 1
@35 = private unnamed_addr constant [18 x i8] c"copy_if_not_exists", align 1
@_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS = external local_unnamed_addr global { { { i8 } } }
@_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER = external local_unnamed_addr global { { { i64 } } }
@36 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char, ptr @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@38 = private unnamed_addr constant [97 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/itertools-0.14.0/src/lib.rs\00", align 1
@39 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"`\00\00\00\00\00\00\00\85\09\00\004\00\00\00" }>, align 8
@40 = private unnamed_addr constant <{ [1 x i8], [1 x i8] }> <{ [1 x i8] c"\14", [1 x i8] undef }>, align 1
@41 = private unnamed_addr constant [15 x i8] c"conditional_put", align 1
@_RNvCs9rVkZwOUgsI_13deltalake_aws14DELTA_LOG_PATH = internal global <{ ptr, [16 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvCs9rVkZwOUgsI_13deltalake_aws14DELTA_LOG_PATH0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB6_, [16 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@_RNvCs9rVkZwOUgsI_13deltalake_aws15DELTA_LOG_REGEX = internal global <{ ptr, [24 x i8], [4 x i8], [4 x i8] }> <{ ptr @_RNvYNCNvCs9rVkZwOUgsI_13deltalake_aws15DELTA_LOG_REGEX0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceB6_, [24 x i8] undef, [4 x i8] c"\03\00\00\00", [4 x i8] undef }>, align 8
@42 = private unnamed_addr constant [9 x i8] c"tablePath", align 1
@43 = private unnamed_addr constant [8 x i8] c"fileName", align 1
@44 = private unnamed_addr constant [14 x i8] c"\C3 \00\00i\14\00\05.json\00", align 1
@45 = private unnamed_addr constant [8 x i8] c"tempPath", align 1
@46 = private unnamed_addr constant [8 x i8] c"complete", align 1
@47 = private unnamed_addr constant [5 x i8] c"false", align 1
@48 = private unnamed_addr constant [4 x i8] c"true", align 1
@49 = private unnamed_addr constant [2 x i8] c"s3", align 1
@50 = private unnamed_addr constant [3 x i8] c"s3a", align 1
@51 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @49, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @50, [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@52 = private unnamed_addr constant [6 x i8] c"\C0\03://\00", align 1
@53 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\15\00\00\00\00\00\00\00s\00\00\007\00\00\00" }>, align 8
@54 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB4_20S3ObjectStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactory14parse_url_opts }>, align 8
@55 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB4_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options }>, align 8
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\15\00\00\00\00\00\00\00q\02\00\00.\00\00\00" }>, align 8
@57 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@58 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@59 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsz_NtCs2pqxYH9ZEk8_3std4timeNtB5_15SystemTimeErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@60 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsonPGffhQyS_5regex5error5ErrorECs9rVkZwOUgsI_13deltalake_aws, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCsonPGffhQyS_5regex5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@61 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCsbvkFyIu7lgC_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@62 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsc_NtNtCsbvkFyIu7lgC_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@63 = private unnamed_addr constant [6 x i8] c"Static", align 1
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\15\00\00\00\00\00\00\00\C0\00\00\00\1F\00\00\00" }>, align 8
@65 = private unnamed_addr constant [9 x i8] c"delta_log", align 1
@66 = private unnamed_addr constant ptr @_RNvYNCNKNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws, align 8
@67 = private unnamed_addr constant [108 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/regex-automata-0.4.14/src/util/pool.rs\00", align 1
@68 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @67, [16 x i8] c"k\00\00\00\00\00\00\00^\02\00\00\1C\00\00\00" }>, align 8
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @67, [16 x i8] c"k\00\00\00\00\00\00\00k\02\00\002\00\00\00" }>, align 8
@_RNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner17THREAD_ID_DROPPED = external global i64
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @67, [16 x i8] c"k\00\00\00\00\00\00\00\01\03\00\00\15\00\00\00" }>, align 8
@71 = private unnamed_addr constant [14 x i8] c"explicit panic", align 1
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"\15\00\00\00\00\00\00\00\91\00\00\00\0A\00\00\00" }>, align 8
@73 = private unnamed_addr constant [30 x i8] c"event crates/aws/src/lib.rs:72", align 1
@74 = private unnamed_addr constant [13 x i8] c"deltalake_aws", align 1
@75 = private unnamed_addr constant [7 x i8] c"message", align 1
@76 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @75, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@77 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCs2y6mmZ7bjoM_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@78 = private unnamed_addr constant [21 x i8] c"crates/aws/src/lib.rs", align 1
@_RNvNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB8_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00H\00\00\00", ptr @73, [8 x i8] c"\1E\00\00\00\00\00\00\00", ptr @74, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @76, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE, ptr @77, ptr @74, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @78, [9 x i8] c"\15\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@79 = private unnamed_addr constant [30 x i8] c"event crates/aws/src/lib.rs:88", align 1
@_RNvNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB8_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss0_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00X\00\00\00", ptr @79, [8 x i8] c"\1E\00\00\00\00\00\00\00", ptr @74, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @76, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss0_10___CALLSITE, ptr @77, ptr @74, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @78, [9 x i8] c"\15\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@80 = private unnamed_addr constant [30 x i8] c"event crates/aws/src/lib.rs:75", align 1
@_RNvNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB8_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\03\00\00\00\00\00\00\00\01\00\00\00K\00\00\00", ptr @80, [8 x i8] c"\1E\00\00\00\00\00\00\00", ptr @74, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @76, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss_10___CALLSITE, ptr @77, ptr @74, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @78, [9 x i8] c"\15\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB8_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss0_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB8_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss0_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss_10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB8_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss_10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@81 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1596105546833480977 to ptr), ptr inttoptr (i64 3351227002240317903 to ptr) }>, align 8
@82 = private unnamed_addr constant [32 x i8] c"\1BDynamoDbLockClient(config: \C0\01)\00", align 1
@83 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsaB04DkjCm5a_10aws_config3sso5cache14CachedSsoTokenNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@84 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs2pqxYH9ZEk8_3std4time10SystemTimeNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@85 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreEBM_, [16 x i8] c"\98\03\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtB2_3Any7type_idBx_ }>, align 8
@86 = private unnamed_addr constant [62 x i8] c"deltalake_aws::logstore::dynamodb_logstore::S3DynamoDbLogStore", align 1
@87 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt }>, align 8
@88 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCs2pqxYH9ZEk8_3std2io5errorNtB2_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr @87, ptr @_RNvXs8_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source, ptr @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs9rVkZwOUgsI_13deltalake_aws, ptr @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs9rVkZwOUgsI_13deltalake_aws, ptr @_RNvXs8_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error5cause, ptr @_RNvYNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@89 = private unnamed_addr constant [6 x i8] c"SHA256", align 1
@90 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCs2pqxYH9ZEk8_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws, align 8
@91 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@92 = private unnamed_addr constant [19 x i8] c"InvalidBooleanValue", align 1
@93 = private unnamed_addr constant [5 x i8] c"value", align 1
@94 = private unnamed_addr constant [24 x i8] c"OffsetLargerThanFileSize", align 1
@95 = private unnamed_addr constant [39 x i8] c"LengthLargerThanFileSizeMinusReadOffset", align 1
@96 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@97 = private unnamed_addr constant [7 x i8] c"IoError", align 1
@98 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB8_5error5ErrorNtNtB8_6marker4SyncNtB1r_4SendEL_ENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@99 = private unnamed_addr constant [14 x i8] c"StreamingError", align 1
@100 = private unnamed_addr constant [16 x i8] c"InvalidUintValue", align 1
@101 = private unnamed_addr constant [15 x i8] c"InvalidUrlValue", align 1
@102 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_5Debug3fmt }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCsjyY8HP3IvQ6_12object_store4pathNtB5_4PathNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@104 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCsbvkFyIu7lgC_4core3fmtbNtB5_5Debug3fmt }>, align 8
@105 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionNtNtCs2pqxYH9ZEk8_3std4time10SystemTimeENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@106 = private unnamed_addr constant [11 x i8] c"CommitEntry", align 1
@107 = private unnamed_addr constant [7 x i8] c"version", align 1
@108 = private unnamed_addr constant [9 x i8] c"temp_path", align 1
@109 = private unnamed_addr constant [11 x i8] c"expire_time", align 1
@110 = private unnamed_addr constant [4 x i8] c"Path", align 1
@111 = private unnamed_addr constant [3 x i8] c"raw", align 1
@112 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@113 = private unnamed_addr constant [76 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/alloc/src/string.rs\00", align 1
@114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @113, [16 x i8] c"K\00\00\00\00\00\00\00d\0B\00\00\0E\00\00\00" }>, align 8
@115 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__billing_mode11BillingModeECs9rVkZwOUgsI_13deltalake_aws, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__billing_modeNtB5_11BillingModeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@116 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt }>, align 8
@117 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsa_NtCsbvkFyIu7lgC_4core4timeNtB5_8DurationNtNtB7_3fmt5Debug3fmt }>, align 8
@118 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@119 = private unnamed_addr constant [14 x i8] c"DynamoDbConfig", align 1
@120 = private unnamed_addr constant [12 x i8] c"billing_mode", align 1
@121 = private unnamed_addr constant [15 x i8] c"lock_table_name", align 1
@122 = private unnamed_addr constant [24 x i8] c"max_elapsed_request_time", align 1
@123 = private unnamed_addr constant [10 x i8] c"sdk_config", align 1
@124 = private unnamed_addr constant [5 x i8] c"Error", align 1
@_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@125 = private unnamed_addr constant [88 x i8] c"S3LogStoreFactory has been asked to create a LogStore with the dynamodb locking provider", align 1
@126 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCs2y6mmZ7bjoM_12tracing_core5fieldNtNtCsbvkFyIu7lgC_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@127 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreEBM_, [16 x i8] c"\98\03\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtB2_3Any7type_idBx_, ptr @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtB5_5AsAny7any_refBD_, ptr @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtB5_5AsAny6as_anyBD_, ptr @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtB5_5AsAny8into_anyBD_, ptr @_RNvXs2_Cs8ulvy0Wg6Ot_12delta_kernelNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtB5_5AsAny9type_nameBD_, ptr @_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore4name, ptr @_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore7refresh, ptr @_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17read_commit_entry, ptr @_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18write_commit_entry, ptr @_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18abort_commit_entry, ptr @_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore18get_latest_version, ptr @_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore12object_store, ptr @_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17root_object_store, ptr @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore6engineB8_, ptr @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore6to_uriB8_, ptr @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore8root_urlB8_, ptr @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore8log_pathB8_, ptr @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore15transaction_urlB8_, ptr @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore23is_delta_table_locationB8_, ptr @_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore6config, ptr @_RNvYNtNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstore18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore16object_store_urlB8_ }>, align 8
@128 = private unnamed_addr constant [142 x i8] c"S3LogStoreFactory has been asked to create a LogStore where the underlying store has copy-if-not-exists enabled - no locking provider required", align 1
@129 = private unnamed_addr constant [123 x i8] c"Most S3 object store support conditional put, remove copy_if_not_exists parameter to use a more performant conditional put.", align 1
@130 = private unnamed_addr constant [13 x i8] c"PayPerRequest", align 1
@131 = private unnamed_addr constant [11 x i8] c"Provisioned", align 1
@132 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb10primitives19sealed_enum_unknown19UnknownVariantValueNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@133 = private unnamed_addr constant [7 x i8] c"Unknown", align 1
@134 = private unnamed_addr constant [6 x i8] c"AllNew", align 1
@135 = private unnamed_addr constant [6 x i8] c"AllOld", align 1
@136 = private unnamed_addr constant [4 x i8] c"None", align 1
@137 = private unnamed_addr constant [10 x i8] c"UpdatedNew", align 1
@138 = private unnamed_addr constant [10 x i8] c"UpdatedOld", align 1
@139 = private unnamed_addr constant [3 x i8] c"And", align 1
@140 = private unnamed_addr constant [2 x i8] c"Or", align 1
@141 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@142 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@143 = private unnamed_addr constant [4 x i8] c"kind", align 1
@144 = private unnamed_addr constant [9 x i8] c"EmptyHost", align 1
@145 = private unnamed_addr constant [9 x i8] c"IdnaError", align 1
@146 = private unnamed_addr constant [11 x i8] c"InvalidPort", align 1
@147 = private unnamed_addr constant [18 x i8] c"InvalidIpv4Address", align 1
@148 = private unnamed_addr constant [18 x i8] c"InvalidIpv6Address", align 1
@149 = private unnamed_addr constant [22 x i8] c"InvalidDomainCharacter", align 1
@150 = private unnamed_addr constant [22 x i8] c"RelativeUrlWithoutBase", align 1
@151 = private unnamed_addr constant [32 x i8] c"RelativeUrlWithCannotBeABaseBase", align 1
@152 = private unnamed_addr constant [25 x i8] c"SetHostOnCannotBeABaseUrl", align 1
@153 = private unnamed_addr constant [8 x i8] c"Overflow", align 1
@154 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRjNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@155 = private unnamed_addr constant [22 x i8] c"IdentityCachePartition", align 1
@156 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@157 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1
@158 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1
@159 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1
@160 = private unnamed_addr constant [4 x i8] c"Zero", align 1
@161 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity21ResolveCachedIdentityEL_ENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@162 = private unnamed_addr constant [19 x i8] c"SharedIdentityCache", align 1
@163 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsaB04DkjCm5a_10aws_config3sso5token16SsoTokenProviderENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@164 = private unnamed_addr constant [2 x i8] c"Ok", align 1
@165 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error10TokenErrorENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@166 = private unnamed_addr constant [3 x i8] c"Err", align 1
@167 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCsaB04DkjCm5a_10aws_config7profile11credentials13ChainProviderENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@168 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error16CredentialsErrorENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@169 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7context6OutputNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@170 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtBB_12interceptors7context5ErrorENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@171 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"O\00\00\00\00\00\00\00i\04\00\00$\00\00\00" }>, align 8
@172 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtB8_4time8DurationNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@173 = private unnamed_addr constant [15 x i8] c"SystemTimeError", align 1
@174 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity15ResolveIdentityEL_EECs9rVkZwOUgsI_13deltalake_aws, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsW_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity15ResolveIdentityEL_ENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@175 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity22IdentityCachePartitionNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws }>, align 8
@176 = private unnamed_addr constant [22 x i8] c"SharedIdentityResolver", align 1
@177 = private unnamed_addr constant [5 x i8] c"inner", align 1
@178 = private unnamed_addr constant [15 x i8] c"cache_partition", align 1
@179 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @38, [16 x i8] c"`\00\00\00\00\00\00\00\82\09\00\006\00\00\00" }>, align 8
@180 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -3395429798058822775 to ptr), ptr inttoptr (i64 -6690209679114157004 to ptr) }>, align 8
@181 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@182 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7138977279839204526 to ptr), ptr inttoptr (i64 -8957275379254221844 to ptr) }>, align 8
@switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws = private unnamed_addr constant [5 x i64] [i64 5, i64 12, i64 11, i64 11, i64 4], align 8
@switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws.195 = private unnamed_addr constant [5 x ptr] [ptr @156, ptr @157, ptr @158, ptr @159, ptr @160], align 8
@switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt = private unnamed_addr constant [10 x i64] [i64 9, i64 9, i64 11, i64 18, i64 18, i64 22, i64 22, i64 32, i64 25, i64 8], align 8
@switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.196 = private unnamed_addr constant [10 x ptr] [ptr @144, ptr @145, ptr @146, ptr @147, ptr @148, ptr @149, ptr @150, ptr @151, ptr @152, ptr @153], align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCs9rVkZwOUgsI_13deltalake_aws11string_attrReEB2_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !3
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noalias !3, !noundef !12
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !13, !noalias !3, !noundef !12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !3
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #31, !noalias !3
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !3, !nonnull !12, !noundef !12 ; 2 uses
  %i.i = icmp samesign ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !15
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringReNtB5_8ToString9to_stringCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 8, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCs9rVkZwOUgsI_13deltalake_aws8num_attryEB2_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [20 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16
  %i.c = call { ptr, i64 } @_RNvMsf_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impy4__fmt(i64 noundef %1, ptr noalias noundef nonnull %i.b, i64 noundef 20), !noalias !16 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.e, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !21
  %i.f = load i64, ptr %i.a, align 8, !range !11, !noalias !21, !noundef !12
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !13, !noalias !21, !noundef !12 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !21
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #31, !noalias !21
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !21, !nonnull !12, !noundef !12 ; 2 uses
  %i.m = icmp samesign ule i64 %i.e, %i.i
  call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringyNtB5_8ToString9to_stringCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !25
  br label %_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringyNtB5_8ToString9to_stringCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringyNtB5_8ToString9to_stringCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 5, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5errorNtB3_5Error9streamingINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1V_6marker4SyncNtB2s_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %2) unnamed_addr #1 {
bb.a:
  store i64 3, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs5_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identityNtB6_8Identity8propertyNtNtCs2DiVQAxFeQE_16aws_smithy_types10config_bag11FrozenLayerECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !26, !noalias !29, !noundef !12
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs9rVkZwOUgsI_13deltalake_aws.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !37, !noalias !38, !noundef !12 ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !alias.scope !37, !noalias !38, !nonnull !12, !noundef !12 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ae, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.j    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i21.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !41 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not27.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not27.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i28.i.i = phi i16 [ %i.ac, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i28.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [24 x i8], ptr %i.k, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -24
  %i.x = call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtB2_10EquivalentBq_E10equivalentCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w), !noalias !44
  br i1 %i.x, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d, !prof !47

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i21.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs9rVkZwOUgsI_13deltalake_aws.exit.thread, !prof !14

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i16 %.sroa.06.0.i28.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i28.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i.i, %i.ad
  br label %bb.c

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !12, !noundef !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = call noundef align 8 ptr @_RINvMs0_NtCs2DiVQAxFeQE_16aws_smithy_types12type_erasureNtB6_13TypeErasedBox12downcast_refNtNtB8_10config_bag11FrozenLayerECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah)
  br label %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs9rVkZwOUgsI_13deltalake_aws.exit.thread

_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs9rVkZwOUgsI_13deltalake_aws.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs9rVkZwOUgsI_13deltalake_aws.exit
  %.sroa.0.0 = phi ptr [ %i.ai, %_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getBO_ECs9rVkZwOUgsI_13deltalake_aws.exit ], [ null, %bb.a ], [ null, %._crit_edge.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMs_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identityNtB5_19SharedIdentityCache3newB10_ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.d, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !48
  %i.e = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 937) 32, i64 noundef 8) #32, !noalias !48 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEE3newCs9rVkZwOUgsI_13deltalake_aws.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #31
          to label %.noexc unwind label %bb.c

end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property8PropertyENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws:bb.a
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtBF_3ffi6os_str8OsStringINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1541
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1541
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1548, !noalias !1549, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1548, !noalias !1549, !noundef !12
  %i.g = add i64 %i.f, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE3newCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %i.g), !noalias !1548
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1548, !noalias !1549, !noundef !12
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1543, !noalias !1550
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringRINtNtCs6Po7BT7Nknu_5alloc3vec3VechEINtNtNtNtB19_11collections4hash3map4IterB13_B1M_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !1538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1541
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j), !noalias !1538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1541
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1v_18runtime_components7TrackedNtB1t_16SharedAuthSchemeEENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1554
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1554
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1561, !noalias !1562, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1561, !noalias !1562, !noundef !12
  %i.g = add i64 %i.f, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBY_18runtime_components7TrackedNtBW_16SharedAuthSchemeEEE3newCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %i.g), !noalias !1561
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1561, !noalias !1562, !noundef !12
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1556, !noalias !1563
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdRINtNtB17_18runtime_components7TrackedNtB15_16SharedAuthSchemeEINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterB13_B2b_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !1551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1554
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j), !noalias !1551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1554
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtB1v_18runtime_components7TrackedNtNtB1v_8identity22SharedIdentityResolverEENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1567
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1567
  call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1574, !noalias !1575, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1574, !noalias !1575, !noundef !12
  %i.g = add i64 %i.f, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdINtNtBY_18runtime_components7TrackedNtNtBY_8identity22SharedIdentityResolverEEE3newCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %i.g), !noalias !1574
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1574, !noalias !1575, !noundef !12
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1569, !noalias !1576
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdRINtNtB17_18runtime_components7TrackedNtNtB17_8identity22SharedIdentityResolverEINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterB13_B2b_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !1564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1567
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j), !noalias !1564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1567
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1580
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1580
  call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1587, !noalias !1588, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1587, !noalias !1588, !noundef !12
  %i.g = add i64 %i.f, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE3newCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %i.g), !noalias !1587
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1587, !noalias !1588, !noundef !12
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1582, !noalias !1589
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtNtCsat9blWvDIpa_11aws_runtime10env_config8property13PropertiesKeyRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterB13_B2b_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !1577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1580
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j), !noalias !1577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1580
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapReNtNtCs6Po7BT7Nknu_5alloc6string6StringENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1593
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1593
  call void @llvm.experimental.noalias.scope.decl(metadata !1595)
  call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1600, !noalias !1601, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1600, !noalias !1601, !noundef !12
  %i.g = add i64 %i.f, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTReNtNtCs6Po7BT7Nknu_5alloc6string6StringEE3newCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %i.g), !noalias !1600
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1600, !noalias !1601, !noundef !12
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1595, !noalias !1602
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRReRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterB13_B16_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !1590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1593
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j), !noalias !1590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1593
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryNtB6_5Debug3fmtBy_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1603
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %i.a, align 8, !noalias !1603
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 7, ptr noundef nonnull readonly %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @102, ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 9, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 8, ptr noundef nonnull readonly %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @104, ptr noalias noundef nonnull readonly captures(address, read_provenance) @109, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1603
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsaB04DkjCm5a_10aws_config11environment15InvalidUrlValueNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1607
  store ptr %i.b, ptr %i.a, align 8, !noalias !1607
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1607
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsaB04DkjCm5a_10aws_config11environment16InvalidUintValueNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1611
  store ptr %i.b, ptr %i.a, align 8, !noalias !1611
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1611
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCsaB04DkjCm5a_10aws_config11environment19InvalidBooleanValueNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1615
  store ptr %i.b, ptr %i.a, align 8, !noalias !1615
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 19, ptr noalias noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1615
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %.val = load i8, ptr %i.a, align 1, !range !1619, !noundef !12 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws, i64 %i.b
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws.195, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.load)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtB8_3num5error13ParseIntErrorNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1620
  store ptr %i.b, ptr %i.a, align 8, !noalias !1620
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @141)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1620
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5error9ErrorKindNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  %i.d = load i64, ptr %i.c, align 8, !range !483, !alias.scope !1624, !noalias !1627, !noundef !12
  switch i64 %i.d, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 24), !noalias !1624
  br label %_RNvXs4_NtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5errorNtB5_9ErrorKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 39), !noalias !1624
  br label %_RNvXs4_NtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5errorNtB5_9ErrorKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1629
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.b, align 8, !noalias !1629
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1629
  br label %_RNvXs4_NtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5errorNtB5_9ErrorKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1629
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.a, align 8, !noalias !1629
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @98)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1629
  br label %_RNvXs4_NtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5errorNtB5_9ErrorKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXs4_NtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5errorNtB5_9ErrorKindNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__return_value11ReturnValueNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1630)
  %i.c = load i64, ptr %i.b, align 8, !range !1633, !alias.scope !1630, !noalias !1634, !noundef !12 ; 2 uses
  %i.d = xor i64 %i.c, -9223372036854775808
  %i.e = icmp slt i64 %i.c, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 5
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 6), !noalias !1630
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__return_valueNtB5_11ReturnValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 6), !noalias !1630
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__return_valueNtB5_11ReturnValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 4), !noalias !1630
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__return_valueNtB5_11ReturnValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 10), !noalias !1630
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__return_valueNtB5_11ReturnValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 10), !noalias !1630
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__return_valueNtB5_11ReturnValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1636
  store ptr %i.b, ptr %i.a, align 8, !noalias !1636
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1636
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__return_valueNtB5_11ReturnValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__return_valueNtB5_11ReturnValueNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.j, %bb.f ], [ %i.k, %bb.g ], [ %i.l, %bb.h ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types21__conditional_operator19ConditionalOperatorNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  %i.c = load i64, ptr %i.b, align 8, !range !63, !alias.scope !1637, !noalias !1640, !noundef !12 ; 2 uses
  %i.d = xor i64 %i.c, -9223372036854775808
  %i.e = icmp slt i64 %i.c, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 2
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 3), !noalias !1637
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types21__conditional_operatorNtB5_19ConditionalOperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 2), !noalias !1637
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types21__conditional_operatorNtB5_19ConditionalOperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1642
  store ptr %i.b, ptr %i.a, align 8, !noalias !1642
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1642
  br label %_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types21__conditional_operatorNtB5_19ConditionalOperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit

_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types21__conditional_operatorNtB5_19ConditionalOperatorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1643
  store ptr %i.b, ptr %i.a, align 8, !noalias !1643
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1643
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity22IdentityCachePartitionNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1647
  store ptr %i.b, ptr %i.a, align 8, !noalias !1647
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @155, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1647
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity22SharedIdentityResolverNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1651
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.a, align 8, !noalias !1651
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 22, ptr noalias noundef nonnull readonly captures(address, read_provenance) @177, i64 noundef 5, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @174, ptr noalias noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @175)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1651
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity8IdentityNtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12
  %i.b = tail call noundef zeroext i1 @_RNvXs6_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identityNtB5_8IdentityNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

end_hunk_1
begin_hunk_2_@_RNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB4_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fh, %bb.fj, %bb.fe, %bb.fd, %bb.fb
  %i.rl = load ptr, ptr %i.bw, align 8, !nonnull !12, !noundef !12
  %i.rm = load ptr, ptr %i.bx, align 8, !nonnull !12, !align !78, !noundef !12
  %i.rn = load ptr, ptr %i.bv, align 8, !nonnull !12, !noundef !12
  %i.ro = load ptr, ptr %i.by, align 8, !nonnull !12, !align !78, !noundef !12
  %i.rp = invoke { ptr, ptr } @_RNvNtNtCs9rVkZwOUgsI_13deltalake_aws8logstore16default_logstore19default_s3_logstore(ptr noundef nonnull %i.rl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.rm, ptr noundef nonnull %i.rn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.ro, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %7)
          to label %bb.fk unwind label %.loopexit.split-lp ; 2 uses

bb.fd:                                            ; preds = %bb.ev, %bb.es, %bb.er, %bb.ew
  %i.rq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.rr = icmp eq i8 %i.rq, 0
  br i1 %i.rr, label %bb.fe, label %bb.fc

bb.fe:                                            ; preds = %bb.fd
  %i.rs = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.rt = icmp ult i64 %i.rs, 6
  call void @llvm.assume(i1 %i.rt)
  %i.ru = icmp samesign ugt i64 %i.rs, 1
  br i1 %i.ru, label %bb.ff, label %bb.fc

bb.ff:                                            ; preds = %bb.fe
  %i.rv = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss_10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.rx = load ptr, ptr %i.rw, align 8, !nonnull !12, !noundef !12
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 40
  %i.rz = load i64, ptr %i.ry, align 8, !noundef !12
  store i64 2, ptr %i.bh, align 8
  %.sroa.358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.rx, ptr %.sroa.358.0..sroa_idx, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.rz, ptr %.sroa.559.0..sroa_idx, align 8
  %i.sa = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.fg unwind label %.loopexit.split-lp ; 2 uses

bb.fg:                                            ; preds = %bb.ff
  %i.sb = extractvalue { ptr, ptr } %i.sa, 0      ; 2 uses
  %i.sc = extractvalue { ptr, ptr } %i.sa, 1      ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %i.se = load ptr, ptr %i.sd, align 8, !invariant.load !12, !nonnull !12
  %i.sf = invoke noundef zeroext i1 %i.se(ptr noundef %i.sb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %bb.fh unwind label %.loopexit.split-lp

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.sf, label %bb.fi, label %bb.fc

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %i.sg = load ptr, ptr @_RNvNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB6_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_optionss_10___CALLSITE, align 8, !nonnull !12, !align !78, !noundef !12
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr @129, ptr %i.be, align 8
  %i.si = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr inttoptr (i64 247 to ptr), ptr %i.si, align 8
  store ptr %i.be, ptr %i.bf, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @126, ptr %i.sj, align 8
  store i64 1, ptr %i.bg, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bf, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 1, ptr %.sroa.562.0..sroa_idx, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.sh, ptr %i.sk, align 8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rv, ptr noundef nonnull %i.sb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sc, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg)
          to label %bb.fj unwind label %.loopexit.split-lp

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.fc

bb.fk:                                            ; preds = %bb.fc
  %i.sl = extractvalue { ptr, ptr } %i.rp, 0
  %i.sm = extractvalue { ptr, ptr } %i.rp, 1
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.sl, ptr %i.sn, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.sm, ptr %i.so, align 16
  store i64 -9223372036854775711, ptr %0, align 16
  br label %.critedge

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit108, %bb.dx
  call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  %i.sp = load ptr, ptr %i.bw, align 8, !alias.scope !2057, !nonnull !12, !noundef !12
  %i.sq = atomicrmw sub ptr %i.sp, i64 1 release, align 8, !noalias !2057
  %i.sr = icmp eq i64 %i.sq, 1
  br i1 %i.sr, label %bb.fl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit126

bb.fl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bw) #33
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit126

.thread:                                          ; preds = %.thread206, %.body93, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit99
  %.pn84134 = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit99 ], [ %eh.lpad-body94, %.body93 ], [ %lpad.thr_comm, %.thread206 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  %i.ss = load ptr, ptr %i.bv, align 8, !alias.scope !2064, !nonnull !12, !noundef !12
  %i.st = atomicrmw sub ptr %i.ss, i64 1 release, align 8, !noalias !2064
  %i.su = icmp eq i64 %i.st, 1
  br i1 %i.su, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bv) #33
          to label %bb.fn unwind label %bb.dw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit130: ; preds = %bb.fn, %bb.fo, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit99
  %.pn84.pn139 = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit99 ], [ %.pn84.pn.ph, %bb.fo ], [ %.pn84.pn.ph, %bb.fn ]
  resume { ptr, i32 } %.pn84.pn139

bb.fn:                                            ; preds = %bb.dy, %bb.fm, %.thread
  %.pn84.pn.ph = phi { ptr, i32 } [ %i.on, %bb.dy ], [ %.pn84134, %bb.fm ], [ %.pn84134, %.thread ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  %i.sv = load ptr, ptr %i.bw, align 8, !alias.scope !2071, !nonnull !12, !noundef !12
  %i.sw = atomicrmw sub ptr %i.sv, i64 1 release, align 8, !noalias !2071
  %i.sx = icmp eq i64 %i.sw, 1
  br i1 %i.sx, label %bb.fo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit130

bb.fo:                                            ; preds = %bb.fn
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bw) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs9rVkZwOUgsI_13deltalake_aws.exit130 unwind label %bb.dw
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !78, !noundef !12
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types13__billing_modeNtB5_11BillingModeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !63, !noundef !12 ; 2 uses
  %i.c = xor i64 %i.b, -9223372036854775808
  %i.d = icmp slt i64 %i.b, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @130, i64 noundef 13)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 11)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @132)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCsbvkFyIu7lgC_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @141)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCsbvkFyIu7lgC_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCsbvkFyIu7lgC_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !973, !noundef !12 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i64, ptr %switch.gep, align 8
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsg_NtCseo6ZV82fEK1_3url6parserNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt.196, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.load)
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore12object_store(ptr noalias noundef readonly align 8 captures(none) dereferenceable(920) %0, ptr noalias readonly align 1 captures(none) dead_on_return %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !align !78, !noundef !12
  %i.e = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.d, 1
  ret { ptr, ptr } %i.h

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore17root_object_store(ptr noalias noundef readonly align 8 captures(none) dereferenceable(920) %0, ptr noalias readonly align 1 captures(none) dead_on_return %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !align !78, !noundef !12
  %i.e = atomicrmw add ptr %i.b, i64 1 monotonic, align 8
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.d, 1
  ret { ptr, ptr } %i.h

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsi_NtNtCs9rVkZwOUgsI_13deltalake_aws8logstore17dynamodb_logstoreNtB5_18S3DynamoDbLogStoreNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStore6config(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(920) %0) unnamed_addr #4 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identityNtB5_19SharedIdentityCacheNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !12
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsz_NtCs2pqxYH9ZEk8_3std4timeNtB5_15SystemTimeErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB7_6filter6FilterIB3_INtNtB7_4skip4SkipIB3_INtNtNtBb_3str4iter15SplitTerminatorReENCNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB2k_4Path5parts0EENCINvXs4_B2k_B2T_INtNtNtB9_6traits7collect12FromIteratorNtNtB2k_5parts8PathPartE9from_iterB1g_E0ENCB3f_s_0ENCB3f_s0_0ENtCscVxtfYSVfE7_9itertools9Itertools4joinCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 18 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2087, !noalias !2088, !noundef !12 ; 2 uses
  store i64 0, ptr %i.k, align 8, !alias.scope !2087, !noalias !2088
  %.not.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i, label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2098
  store ptr %i.j, ptr %i.e, align 8, !noalias !2098
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.j, ptr %i.m, align 8, !noalias !2098
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.n, align 8, !noalias !2098
  %i.o = tail call fastcc { ptr, i64 } @_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(136) %1), !noalias !2104 ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 2 uses
  %.not33.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not33.i.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_4skip4SkipIBO_INtNtNtBc_3str4iter15SplitTerminatorReENCNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB21_4Path5parts0EENCINvXs4_B21_B2A_INtNtNtBa_6traits7collect12FromIteratorNtNtB21_5parts8PathPartE9from_iterBX_E0ENtNtB3g_8iterator8Iterator8try_folduNCINvNvB4s_4find5checkB3O_QNCB2W_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3O_EECs9rVkZwOUgsI_13deltalake_aws.exit.thread5.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.q = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.r = phi { ptr, i64 } [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %i.w, %bb.f ]
  %i.s = extractvalue { ptr, i64 } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2108
  store i64 -9223372036854775808, ptr %i.d, align 8, !noalias !2118
  store ptr %i.q, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2118
  store i64 %i.s, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2118
  %i.t = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvXs4_NtCsjyY8HP3IvQ6_12object_store4pathNtBX_4PathINtNtNtNtBb_4iter6traits7collect12FromIteratorNtNtBX_5parts8PathPartE9from_iterINtNtNtB1N_8adapters4skip4SkipINtNtB32_3map3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMBX_B1w_5parts0EEEs_0INtB7_5FnMutTRB2q_EE8call_mutCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.d unwind label %bb.c, !noalias !2119

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #36
          to label %common.resume unwind label %bb.e, !noalias !2119

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2108
  br i1 %i.t, label %bb.l, label %bb.f

common.resume:                                    ; preds = %bb.j, %bb.ad, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bz, %bb.ad ], [ %i.u, %bb.c ], [ %.pn, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !2119
  unreachable

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_4skip4SkipIBO_INtNtNtBc_3str4iter15SplitTerminatorReENCNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB21_4Path5parts0EENCINvXs4_B21_B2A_INtNtNtBa_6traits7collect12FromIteratorNtNtB21_5parts8PathPartE9from_iterBX_E0ENtNtB3g_8iterator8Iterator8try_folduNCINvNvB4s_4find5checkB3O_QNCB2W_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3O_EECs9rVkZwOUgsI_13deltalake_aws.exit.thread5.i.i.i: ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2098
  br label %.loopexit56

bb.f:                                             ; preds = %bb.d
  %i.w = call fastcc { ptr, i64 } @_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(136) %1), !noalias !2122 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_4skip4SkipIBO_INtNtNtBc_3str4iter15SplitTerminatorReENCNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB21_4Path5parts0EENCINvXs4_B21_B2A_INtNtNtBa_6traits7collect12FromIteratorNtNtB21_5parts8PathPartE9from_iterBX_E0ENtNtB3g_8iterator8Iterator8try_folduNCINvNvB4s_4find5checkB3O_QNCB2W_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3O_EECs9rVkZwOUgsI_13deltalake_aws.exit.thread5.i.i.i, label %bb.b

bb.g:                                             ; preds = %bb.a
  %i.y = add i64 %i.l, -1                         ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.g, %bb.h
  %.sroa.01.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ab, %bb.h ], [ %i.y, %bb.g ]
  %i.z = tail call fastcc { ptr, i64 } @_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(136) %1), !noalias !2123
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit56, label %bb.h

bb.h:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.ab = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.loopexit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.h, %bb.g
  %i.ad = tail call fastcc { ptr, i64 } @_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(136) %1) #37, !noalias !2126
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %.not.i.i4.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i4.i.i.i.i.i, label %.loopexit56, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i

.loopexit56:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i, %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_4skip4SkipIBO_INtNtNtBc_3str4iter15SplitTerminatorReENCNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB21_4Path5parts0EENCINvXs4_B21_B2A_INtNtNtBa_6traits7collect12FromIteratorNtNtB21_5parts8PathPartE9from_iterBX_E0ENtNtB3g_8iterator8Iterator8try_folduNCINvNvB4s_4find5checkB3O_QNCB2W_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowB3O_EECs9rVkZwOUgsI_13deltalake_aws.exit.thread5.i.i.i
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, %.loopexit56
  ret void

end_hunk_2
