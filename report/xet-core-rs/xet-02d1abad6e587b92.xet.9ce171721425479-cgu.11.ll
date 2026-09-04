Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet-02d1abad6e587b92.xet.9ce171721425479-cgu.11?download=true
inline.NumInlined: 1562
inline.NumDeleted: 660
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [4 x i8] c".tmp", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session18upload_file_handleNtBK_13XetFileUpload18finalize_ingestion00EBO_, [16 x i8] c"\90\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNCNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session18upload_file_handleNtB8_13XetFileUpload18finalize_ingestion00Bc_ }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handleNtBI_15XetFileDownload6finish00EBM_, [16 x i8] c"\90\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNCNvMNtNtCsQbU2fm3lSD_3xet11xet_session20file_download_handleNtB6_15XetFileDownload6finish00Ba_ }>, align 8
@3 = private unnamed_addr constant [8 x i8] c"\C3 \00 i\05\00\00", align 1
@4 = private unnamed_addr constant [733 x i8] c"\00\00@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHJHLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJLJPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNPNRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPRPVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTVTXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVXVZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZXZX^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\^\\`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^`^dbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdbdb", align 1
@5 = private unnamed_addr constant [106 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chrono-0.4.44/src/naive/internals.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"i\00\00\00\00\00\00\00\08\01\00\00\1B\00\00\00" }>, align 8
@7 = private unnamed_addr constant [10 x i8] c"\01.\C3 \00\00i\03\00\00", align 1
@8 = private unnamed_addr constant [10 x i8] c"\01.\C3 \00\00i\06\00\00", align 1
@9 = private unnamed_addr constant [10 x i8] c"\01.\C3 \00\00i\09\00\00", align 1
@10 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@11 = private unnamed_addr constant [80 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/sync/atomic.rs\00", align 1
@12 = private unnamed_addr constant [52 x i8] c"there is no such thing as a release failure ordering", align 1
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"O\00\00\00\00\00\00\00\1E\10\00\00\1D\00\00\00" }>, align 8
@14 = private unnamed_addr constant [61 x i8] c"there is no such thing as an acquire-release failure ordering", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"O\00\00\00\00\00\00\00\1D\10\00\00\1C\00\00\00" }>, align 8
@16 = private unnamed_addr constant [40 x i8] c"xet_pkg/src/xet_session/task_runtime.rs\00", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"'\00\00\00\00\00\00\00;\01\00\00*\00\00\00" }>, align 8
@18 = private unnamed_addr constant [21 x i8] c"\C0\12 cancelled by user\00", align 1
@19 = private unnamed_addr constant [53 x i8] c"all branches are disabled and there is no else branch", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"'\00\00\00\00\00\00\00<\01\00\00\15\00\00\00" }>, align 8
@21 = private unnamed_addr constant [27 x i8] c"task already being resolved", align 1
@22 = private unnamed_addr constant [48 x i8] c"xet_pkg/src/xet_session/file_download_handle.rs\00", align 1
@23 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @22, [16 x i8] c"/\00\00\00\00\00\00\00_\00\00\00?\00\00\00" }>, align 8
@24 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.50.0/src/sync/mutex.rs\00", align 1
@25 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"c\00\00\00\00\00\00\00\B3\01\00\00\1B\00\00\00" }>, align 8
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"c\00\00\00\00\00\00\00\95\02\00\00\0D\00\00\00" }>, align 8
@27 = private unnamed_addr constant [46 x i8] c"xet_pkg/src/xet_session/upload_file_handle.rs\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"-\00\00\00\00\00\00\00S\00\00\00B\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @16, [16 x i8] c"'\00\00\00\00\00\00\00 \00\00\00B\00\00\00" }>, align 8
@30 = private unnamed_addr constant [33 x i8] c"background task cancelled by user", align 1
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"c\00\00\00\00\00\00\00\B2\01\00\003\00\00\00" }>, align 8
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @24, [16 x i8] c"c\00\00\00\00\00\00\00\8F\02\00\00\1D\00\00\00" }>, align 8
@33 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.50.0/src/lib.rs\00", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"\\\00\00\00\00\00\00\00D\02\00\00,\00\00\00" }>, align 8
@35 = private unnamed_addr constant [52 x i8] c"writing rfc3339 datetime to string should never fail", align 1
@36 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chrono-0.4.44/src/datetime/mod.rs\00", align 1
@37 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"f\00\00\00\00\00\00\00\80\02\00\00\0E\00\00\00" }>, align 8
@38 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VechEEEECsQbU2fm3lSD_3xet, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VechEEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@39 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@40 = private unnamed_addr constant [26 x i8] c"new_upload_commit_blocking", align 1
@_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@_RNvNvMNtNtCsQbU2fm3lSD_3xet11xet_session13upload_commitINtNtB6_18auth_group_builder16AuthGroupBuilderNtB4_15XetUploadCommitE14build_blocking10___CALLSITE = external hidden global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@41 = private unnamed_addr constant [47 x i8] c"\1ENew upload commit, session_id=\C0\0C, commit_id=\C0\00", align 1
@42 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCs94TQx44N27d_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@43 = private unnamed_addr constant [32 x i8] c"new_file_download_group_blocking", align 1
@_RNvNvMNtNtCsQbU2fm3lSD_3xet11xet_session19file_download_groupINtNtB6_18auth_group_builder16AuthGroupBuilderNtB4_20XetFileDownloadGroupE14build_blocking10___CALLSITE = external hidden global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@44 = private unnamed_addr constant [52 x i8] c"$New file download group, session_id=\C0\0B, group_id=\C0\00", align 1
@45 = private unnamed_addr constant [24 x i8] c"download_stream_blocking", align 1
@46 = private unnamed_addr constant [34 x i8] c"download_unordered_stream_blocking", align 1
@47 = private unnamed_addr constant [34 x i8] c"new_download_stream_group_blocking", align 1
@48 = private unnamed_addr constant [54 x i8] c"&New download stream group, session_id=\C0\0B, group_id=\C0\00", align 1
@_RNvNCNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupINtNtBa_18auth_group_builder16AuthGroupBuilderNtB8_22XetDownloadStreamGroupE5build010___CALLSITE = global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNCNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupINtNtBc_18auth_group_builder16AuthGroupBuilderNtBa_22XetDownloadStreamGroupE5build010___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@_RNvNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupINtNtB8_18auth_group_builder16AuthGroupBuilderNtB6_22XetDownloadStreamGroupE14build_blocking10___CALLSITE = internal global <{ ptr, [10 x i8], [6 x i8] }> <{ ptr @_RNvNvNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupINtNtBa_18auth_group_builder16AuthGroupBuilderNtB8_22XetDownloadStreamGroupE14build_blocking10___CALLSITE4META, [10 x i8] c"\00\00\00\00\00\00\00\00\FF\00", [6 x i8] undef }>, align 8
@49 = private unnamed_addr constant [57 x i8] c"event xet_pkg/src/xet_session/download_stream_group.rs:61", align 1
@50 = private unnamed_addr constant [39 x i8] c"xet::xet_session::download_stream_group", align 1
@51 = private unnamed_addr constant [7 x i8] c"message", align 1
@52 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @51, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@53 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs94TQx44N27d_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCs94TQx44N27d_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCs94TQx44N27d_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsQbU2fm3lSD_3xet }>, align 8
@54 = private unnamed_addr constant [48 x i8] c"xet_pkg/src/xet_session/download_stream_group.rs", align 1
@_RNvNvNCNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupINtNtBc_18auth_group_builder16AuthGroupBuilderNtBa_22XetDownloadStreamGroupE5build010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00=\00\00\00", ptr @49, [8 x i8] c"9\00\00\00\00\00\00\00", ptr @50, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @52, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupINtNtBa_18auth_group_builder16AuthGroupBuilderNtB8_22XetDownloadStreamGroupE5build010___CALLSITE, ptr @53, ptr @50, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @54, [9 x i8] c"0\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@55 = private unnamed_addr constant [57 x i8] c"event xet_pkg/src/xet_session/download_stream_group.rs:89", align 1
@_RNvNvNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupINtNtBa_18auth_group_builder16AuthGroupBuilderNtB8_22XetDownloadStreamGroupE14build_blocking10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00Y\00\00\00", ptr @55, [8 x i8] c"9\00\00\00\00\00\00\00", ptr @50, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @52, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMs_NtNtCsQbU2fm3lSD_3xet11xet_session21download_stream_groupINtNtB8_18auth_group_builder16AuthGroupBuilderNtB6_22XetDownloadStreamGroupE14build_blocking10___CALLSITE, ptr @53, ptr @50, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @54, [9 x i8] c"0\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@56 = private unnamed_addr constant [30 x i8] c"download buffer mutex poisoned", align 1
@57 = private unnamed_addr constant [49 x i8] c"xet_pkg/src/xet_session/download_stream_group.rs\00", align 1
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @57, [16 x i8] c"0\00\00\00\00\00\00\00%\00\00\00\17\00\00\00" }>, align 8
@59 = private unnamed_addr constant [79 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/core/src/slice/iter.rs\00", align 1
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @59, [16 x i8] c"N\00\00\00\00\00\00\00\0B\08\00\00\11\00\00\00" }>, align 8
@61 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsQbU2fm3lSD_3xet, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCsQbU2fm3lSD_3xet }>, align 8
@62 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@63 = private unnamed_addr constant [76 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/string.rs\00", align 1
@64 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @63, [16 x i8] c"K\00\00\00\00\00\00\00\9A\0B\00\00\0E\00\00\00" }>, align 8
@65 = private unnamed_addr constant [5 x i8] c"Error", align 1
@66 = private unnamed_addr constant [4 x i8] c"None", align 1
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBz_2__FENtB6_5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@68 = private unnamed_addr constant [4 x i8] c"Some", align 1
@69 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB6_5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@70 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRjNtB6_5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@71 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRyNtB6_5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@72 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsG258MDvU3F_3std4path7DisplayENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@73 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsQbU2fm3lSD_3xet5error8XetErrorENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB14_ }>, align 8
@74 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@75 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@76 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsu_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRNtNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id8UniqueIdENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@77 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionINtNtCsiAynQAjgDuT_10xet_client9cas_types5RangeyNtBV_2__FEENtB6_5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@78 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtB6_5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@79 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionyENtB6_5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@80 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsG258MDvU3F_3std4path7PathBufNtB6_5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@81 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsiAynQAjgDuT_10xet_client10cas_client13retry_wrapper12RetryWrapperNtB6_5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@82 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRTyyENtB6_5Debug3fmtCsQbU2fm3lSD_3xet }>, align 8
@83 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2183554385892681230 to ptr), ptr inttoptr (i64 -7813891047107712238 to ptr) }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCsakO97VULfQA_8tempfile3dirNtB3_7TempDir6new_inRNtNtCsG258MDvU3F_3std4path7PathBufECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 6, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 0, ptr %i.g, align 8
  store i32 0, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 49
  store i8 0, ptr %i.h, align 1
  call void @_RINvMs_CsakO97VULfQA_8tempfileNtB5_7Builder10tempdir_inRNtNtCsG258MDvU3F_3std4path7PathBufECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i
  %i.c = phi i64 [ %i.aq, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !77, !noundef !16 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit12.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !77, !noundef !16
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !77, !noundef !16
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !77, !noundef !16
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit12.i.i.i.i.i
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit12.i.i.i.i.i ] ; 9 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsQbU2fm3lSD_3xet.exit12.i.i.i.i.i ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i
    i32 13, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i
    i32 12, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i
    i32 11, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i
    i32 10, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i
    i32 9, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.ar, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsQbU2fm3lSD_3xet.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsQbU2fm3lSD_3xet.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.au = zext i1 %i.at to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.aw = zext i1 %i.av to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ax = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noalias !78, !noundef !16
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bb = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !noalias !78, !noundef !16
  %i.bf = lshr i8 %i.be, 1
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ], [ %i.au, %bb.f ], [ %i.bf, %bb.i ]
  %i.bg = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bg, label %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i, label %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsQbU2fm3lSD_3xet.exit

_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i: ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bh = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsQbU2fm3lSD_3xet.exit: ; preds = %bb.e, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i, %bb.d
  %i.bi = icmp eq ptr %.sroa.4.0, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsQbU2fm3lSD_3xet.exit, %bb.t
  %i.bj = phi ptr [ %i.ct, %bb.t ], [ %i.a, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsQbU2fm3lSD_3xet.exit ] ; 5 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !79, !noundef !16 ; 3 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.j, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit17.i.i.i.i.i

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bn = icmp ne ptr %.sroa.4.0, %i.bk
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 -2 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !79, !noundef !16 ; 3 uses
  %i.bq = and i8 %i.bp, 31
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = icmp slt i8 %i.bp, -64
  br i1 %i.bs, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bt = zext nneg i8 %i.bl to i32
  br label %bb.m

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit17.i.i.i.i.i
  %i.bu = icmp ne ptr %.sroa.4.0, %i.bo
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 -3 ; 3 uses
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !79, !noundef !16 ; 3 uses
  %i.bx = and i8 %i.bw, 15
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = icmp slt i8 %i.bw, -64
  br i1 %i.bz, label %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit17.i.i.i.i.i
  %i.ca = phi ptr [ %i.co, %bb.l ], [ %i.bo, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.cs, %bb.l ], [ %i.br, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit17.i.i.i.i.i ]
  %i.cb = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cc = and i8 %i.bl, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.cb, %i.cd
  br label %bb.m

_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit19.i.i.i.i.i
  %i.cf = icmp ne ptr %.sroa.4.0, %i.bv
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !79, !noundef !16
  %i.ci = and i8 %i.ch, 7
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.bw, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit19.i.i.i.i.i
  %i.co = phi ptr [ %i.cg, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit21.i.i.i.i.i ], [ %i.bv, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.cn, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit21.i.i.i.i.i ], [ %i.by, %_RNvXs2K_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsQbU2fm3lSD_3xet.exit19.i.i.i.i.i ]
  %i.cp = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cq = and i8 %i.bp, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi ptr [ %i.bk, %bb.j ], [ %i.ca, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.ce, %bb.k ] ; 8 uses
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cu)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cv, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cw, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cx = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.da = zext i1 %i.cz to i8
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.db = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noalias !80, !noundef !16
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.df = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !80, !noundef !16
  %i.dj = lshr i8 %i.di, 1
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i6

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.da, %bb.q ], [ %i.de, %bb.r ], [ %i.cy, %bb.p ], [ %i.dj, %bb.s ]
  %i.dk = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dl = icmp eq ptr %.sroa.4.0, %i.ct
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCsQbU2fm3lSD_3xet.exit.i.i.i6, %bb.o, %bb.n
  %i.dm = ptrtoint ptr %i.bj to i64
  %i.dn = ptrtoint ptr %.sroa.4.0 to i64
  %i.do = sub i64 %i.aq, %i.dn
  %i.dp = add i64 %i.do, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i, %bb.t, %bb.a, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsQbU2fm3lSD_3xet.exit, %bb.u
  %.sroa.0.02934 = phi i64 [ %i.c, %bb.u ], [ %i.c, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsQbU2fm3lSD_3xet.exit ], [ 0, %bb.a ], [ %i.c, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i ] ; 2 uses
  %.sroa.02.1 = phi i64 [ %i.dp, %bb.u ], [ %i.aq, %_RNvXso_NtNtCskKLDkoKarTP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCsQbU2fm3lSD_3xet.exit ], [ 0, %bb.a ], [ %i.aq, %bb.t ], [ 0, %_RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCsQbU2fm3lSD_3xet.exit.i.i ]
  %i.dq = sub nuw i64 %.sroa.02.1, %.sroa.0.02934
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.02934
  %i.ds = insertvalue { ptr, i64 } poison, ptr %i.dr, 0
  %i.dt = insertvalue { ptr, i64 } %i.ds, i64 %i.dq, 1
  ret { ptr, i64 } %i.dt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtCskmxkG8Vp81z_12hybrid_array7from_fnINtB5_5ArrayhINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB24_2B0EB2h_EB2h_EB2h_EB2h_EB2h_EE11try_from_fnzNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtCskKLDkoKarTP_4core7default7Default7default0E0ECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 1 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtCskmxkG8Vp81z_12hybrid_array7from_fnINtB5_5ArrayhINtNtCs6n3aXIo7Vge_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnzNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtCskKLDkoKarTP_4core7default7Default7default0E0ECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 1 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias nofree noundef nonnull readnone captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB3_16MDBInMemoryShard14add_xorb_blockINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB5_12xorb_structs11MDBXorbInfoEECsQbU2fm3lSD_3xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.g = atomicrmw add ptr %2, i64 1 monotonic, align 8
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = invoke noundef ptr @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtBb_4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEE6insertCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull %2)
          to label %bb.f unwind label %.loopexit.split-lp ; 3 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %bb.k, %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.b, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.k = load ptr, ptr %i.e, align 8, !alias.scope !105, !nonnull !16, !noundef !16
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !105
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsQbU2fm3lSD_3xet.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsQbU2fm3lSD_3xet.exit unwind label %bb.p

bb.f:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = icmp eq ptr %i.j, null
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsQbU2fm3lSD_3xet.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !106
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsQbU2fm3lSD_3xet.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsQbU2fm3lSD_3xet.exit unwind label %.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.g, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !16 ; 2 uses
  %.idx = mul nuw nsw i64 %i.u, 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsQbU2fm3lSD_3xet.exit.._crit_edge_crit_edge, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsQbU2fm3lSD_3xet.exit.._crit_edge_crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsQbU2fm3lSD_3xet.exit
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre18 = load i64, ptr %.phi.trans.insert17, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsQbU2fm3lSD_3xet.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEyEEECsQbU2fm3lSD_3xet.exit
  %.sroa.0.015 = phi ptr [ %i.s, %.lr.ph ], [ %i.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEyEEECsQbU2fm3lSD_3xet.exit ] ; 2 uses
  %.sroa.7.014 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEyEEECsQbU2fm3lSD_3xet.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.015, i64 48 ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.7.014, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.015, i64 32, i1 false)
  %i.ab = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.k

._crit_edge.loopexit:                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEyEEECsQbU2fm3lSD_3xet.exit
  %.pre = load ptr, ptr %i.e, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre16 = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsQbU2fm3lSD_3xet.exit.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.ae = phi i64 [ %i.aw, %._crit_edge.loopexit ], [ %.pre18, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsQbU2fm3lSD_3xet.exit.._crit_edge_crit_edge ]
  %i.af = phi i64 [ %.pre16, %._crit_edge.loopexit ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsQbU2fm3lSD_3xet.exit.._crit_edge_crit_edge ] ; 2 uses
  %i.ag = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEEECsQbU2fm3lSD_3xet.exit.._crit_edge_crit_edge ]
  %i.ah = icmp ult i64 %i.af, 192153584101141163
  call void @llvm.assume(i1 %i.ah)
  %i.ai = mul nuw nsw i64 %i.af, 48
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = add nuw i64 %i.ai, 60
  %i.al = add i64 %i.ak, %i.ae
  store i64 %i.al, ptr %i.aj, align 8
  store i64 -1, ptr %0, align 8
  %i.am = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !107
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsQbU2fm3lSD_3xet.exit7

bb.j:                                             ; preds = %._crit_edge
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #32
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsQbU2fm3lSD_3xet.exit7

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsQbU2fm3lSD_3xet.exit7: ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16
  %i.ap = invoke { ptr, i64 } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBT_14metadata_shard12xorb_structs11MDBXorbInfoEyEINtNtBR_18passthrough_hasher15U64DirectHasherBN_EE6insertCsQbU2fm3lSD_3xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull %i.ao, i64 noundef %.sroa.7.014)
          to label %bb.m unwind label %.loopexit  ; 2 uses

bb.l:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0      ; 3 uses
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1
  store ptr %i.aq, ptr %i.b, align 8
  store i64 %i.ar, ptr %i.x, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = icmp eq ptr %i.aq, null
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEyEEECsQbU2fm3lSD_3xet.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !108
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEyEEECsQbU2fm3lSD_3xet.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #32
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEyEEECsQbU2fm3lSD_3xet.exit unwind label %.loopexit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEyEEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.n, %bb.m, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.av = load i64, ptr %i.y, align 8, !noundef !16
  %i.aw = add i64 %i.av, 16                       ; 2 uses
  store i64 %i.aw, ptr %i.y, align 8
  %i.ax = icmp eq ptr %i.z, %i.v
  br i1 %i.ax, label %._crit_edge.loopexit, label %bb.i

bb.p:                                             ; preds = %bb.e
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoEECsQbU2fm3lSD_3xet.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtNtCsQbU2fm3lSD_3xet11xet_session12task_runtimeNtB6_11TaskRuntime11bridge_syncNtNtB8_18upload_file_handle13XetFileUploadNCNvMs1_NtB8_13upload_commitNtB2b_15XetUploadCommit21upload_bytes_blocking0EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(336) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
