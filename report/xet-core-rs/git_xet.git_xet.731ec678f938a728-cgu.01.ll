Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet.git_xet.731ec678f938a728-cgu.01?download=true
inline.NumInlined: 2855
inline.NumDeleted: 1136
begin_hunk_0
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @34, [16 x i8] c"&\00\00\00\00\00\00\00T\00\00\00 \00\00\00" }>, align 8
@61 = private unnamed_addr constant [50 x i8] c"Hugging Face Hub didn't provide a CAS access token", align 1
@62 = private unnamed_addr constant [61 x i8] c"Hugging Face Hub didn't provide a CAS access token expiration", align 1
@63 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"\1C\00\00\00\00\00\00\00\9F\00\00\00\1D\00\00\00" }>, align 8
@64 = private unnamed_addr constant [41 x i8] c"Hugging Face Hub didn't provide a CAS URL", align 1
@_RNvNCNCNvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtBb_16ShardFileManager5flush0010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@65 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.50.0/src/sync/rwlock.rs\00", align 1
@66 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @65, [16 x i8] c"d\00\00\00\00\00\00\00\B3\01\00\00\11\00\00\00" }>, align 8
@67 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @65, [16 x i8] c"d\00\00\00\00\00\00\00\0B\03\00\00\11\00\00\00" }>, align 8
@68 = private unnamed_addr constant [35 x i8] c"FileUploadSession already finalized", align 1
@69 = private unnamed_addr constant [47 x i8] c"xet_data/src/processing/file_upload_session.rs\00", align 1
@70 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00;\02\00\00\05\00\00\00" }>, align 8
@71 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00J\01\00\00\05\00\00\00" }>, align 8
@72 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtBK_17FileUploadSession17register_new_xorb00s_0ECs9SMuO7kbZ2K_7git_xet, [16 x i8] c"0\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtBd_17FileUploadSession17register_new_xorb00s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTyyyEE9call_once6vtableCs9SMuO7kbZ2K_7git_xet, ptr @_RNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB8_17FileUploadSession17register_new_xorb00s_0Cs9SMuO7kbZ2K_7git_xet, ptr @_RNCNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB8_17FileUploadSession17register_new_xorb00s_0Cs9SMuO7kbZ2K_7git_xet }>, align 8
@_RNvNCNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB8_17FileUploadSession17register_new_xorb0010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@73 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsp_NtCs94TQx44N27d_12tracing_core5fieldNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_5Value6record }>, align 8
@74 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00\95\01\00\00-\00\00\00" }>, align 8
@75 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00\AE\01\00\00\05\00\00\00" }>, align 8
@_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants14MAX_XORB_BYTES = external global { { { [1 x i64] } }, { { { { { i32 } } } } }, [1 x i32] }
@_RNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object9constants15MAX_XORB_CHUNKS = external global { { { [1 x i64] } }, { { { { { i32 } } } } }, [1 x i32] }
@76 = private unnamed_addr constant [41 x i8] c"detached completion produced no file info", align 1
@_RNvNtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_id7NEXT_ID = external global { { { i64 } } }
@_RNvNCNvMs0_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB9_16ShardFileManager15register_shards010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@_RNvNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB9_17SingleFileCleaner12finish_inner010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@77 = private unnamed_addr constant [40 x i8] c"xet_data/src/processing/file_cleaner.rs\00", align 1
@78 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"'\00\00\00\00\00\00\00\D9\00\00\00\05\00\00\00" }>, align 8
@79 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"'\00\00\00\00\00\00\00\9F\00\00\00\05\00\00\00" }>, align 8
@80 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"'\00\00\00\00\00\00\00\85\00\00\00+\00\00\00" }>, align 8
@81 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"<\00\00\00\00\00\00\00\0D\02\00\00\05\00\00\00" }>, align 8
@82 = private unnamed_addr constant [40 x i8] c"#Shard manager flushed new shard to \C0\01.\00", align 1
@83 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsl_NtCs94TQx44N27d_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record }>, align 8
@84 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.50.0/src/sync/mutex.rs\00", align 1
@85 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @84, [16 x i8] c"c\00\00\00\00\00\00\00\B3\01\00\00\1B\00\00\00" }>, align 8
@86 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @84, [16 x i8] c"c\00\00\00\00\00\00\00\95\02\00\00\0D\00\00\00" }>, align 8
@87 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @65, [16 x i8] c"d\00\00\00\00\00\00\00\AF\01\00\00\1B\00\00\00" }>, align 8
@88 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @65, [16 x i8] c"d\00\00\00\00\00\00\00\07\03\00\00\1B\00\00\00" }>, align 8
@89 = private unnamed_addr constant [165 x i8] c"This repository has a non-standard Hugging Face remote URL, \0A                please specify the Hugging Face server endpoint using environment variable \22HF_ENDPOINT\22", align 1
@_RNvNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { { { i64, { { i64, [1 x i64] } } }, i64 }, i64, ptr, i64, { { { i32, [2 x i32] } } }, { { { { i8, [1 x i8] } } } }, i8, [1 x i8] } }, i8, [7 x i8] }
@90 = private unnamed_addr constant [24 x i8] c"git_xet/src/bin/main.rs\00", align 1
@91 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @90, [16 x i8] c"\17\00\00\00\00\00\00\00\05\00\00\00\01\00\00\00" }>, align 8
@92 = private unnamed_addr constant [19 x i8] c"git_xet/src/app.rs\00", align 1
@93 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @92, [16 x i8] c"\12\00\00\00\00\00\00\00\8F\00\00\00*\00\00\00" }>, align 8
@_RNvNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB6_17FileUploadSession13finalize_impl010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@94 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1 to ptr), ptr @32 }>, align 8
@95 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00?\02\00\00P\00\00\00" }>, align 8
@_RNvNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB6_17FileUploadSession17register_new_xorb010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@96 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs17_NtCs94TQx44N27d_12tracing_core5fieldjNtB6_5Value6record }>, align 8
@97 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00O\01\00\00\17\00\00\00" }>, align 8
@98 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00\05\02\00\00h\00\00\00" }>, align 8
@99 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00\16\02\00\00#\00\00\00" }>, align 8
@_RNvNCNvMNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_sessionNtB6_17FileUploadSession37register_single_file_clean_completion010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@100 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00\B3\01\00\00\15\00\00\00" }>, align 8
@101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00E\00\00\00W\00\00\00" }>, align 8
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00\0E\02\00\00#\00\00\00" }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00\F6\01\00\00\1E\00\00\00" }>, align 8
@104 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00\A4\02\00\00L\00\00\00" }>, align 8
@105 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00M\00\00\00g\00\00\00" }>, align 8
@106 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00k\00\00\00#\00\00\00" }>, align 8
@107 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00l\00\00\00$\00\00\00" }>, align 8
@108 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @69, [16 x i8] c".\00\00\00\00\00\00\00m\00\00\00 \00\00\00" }>, align 8
@109 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"!\00\00\00\00\00\00\00(\00\00\00B\00\00\00" }>, align 8
@110 = private unnamed_addr constant [50 x i8] c"xet_data/src/processing/shard_interface/native.rs\00", align 1
@111 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @110, [16 x i8] c"1\00\00\00\00\00\00\00\C2\00\00\00]\00\00\00" }>, align 8
@112 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @110, [16 x i8] c"1\00\00\00\00\00\00\00\ED\00\00\00L\00\00\00" }>, align 8
@113 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @110, [16 x i8] c"1\00\00\00\00\00\00\00\E5\00\00\00\\\00\00\00" }>, align 8
@114 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @110, [16 x i8] c"1\00\00\00\00\00\00\00\F3\00\00\00K\00\00\00" }>, align 8
@_RNvNCNvMNtNtNtCsjHtSR7YjKD4_8xet_data10processing15shard_interface6nativeNtB6_21SessionShardInterface34upload_and_register_session_shards010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@115 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @110, [16 x i8] c"1\00\00\00\00\00\00\00\14\01\00\00\1B\00\00\00" }>, align 8
@116 = private unnamed_addr constant [13 x i8] c"xorb_metadata", align 1
@117 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @110, [16 x i8] c"1\00\00\00\00\00\00\00A\00\00\00\17\00\00\00" }>, align 8
@118 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @110, [16 x i8] c"1\00\00\00\00\00\00\00\89\00\00\00$\00\00\00" }>, align 8
@119 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"<\00\00\00\00\00\00\00o\01\00\00C\00\00\00" }>, align 8
@120 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"<\00\00\00\00\00\00\00\F7\00\00\00Y\00\00\00" }>, align 8
@121 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"<\00\00\00\00\00\00\00\12\01\00\00)\00\00\00" }>, align 8
@122 = private unnamed_addr constant [27 x i8] c"\0BRegistered \C0\0C new shards.\00", align 1
@123 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"<\00\00\00\00\00\00\00\BC\00\00\00h\00\00\00" }>, align 8
@124 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"'\00\00\00\00\00\00\00\EB\00\00\00R\00\00\00" }>, align 8
@125 = private unnamed_addr constant [5 x i8] c"clean", align 1
@126 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @125, [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@127 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsh_NtCs94TQx44N27d_12tracing_core5fieldReNtB5_5Value6recordCs9SMuO7kbZ2K_7git_xet }>, align 8
@128 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs13_NtCs94TQx44N27d_12tracing_core5fieldyNtB6_5Value6record }>, align 8
@_RNvNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB9_17SingleFileCleaner18finish_with_chunks010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@129 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs9SMuO7kbZ2K_7git_xet, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsC_NtCs94TQx44N27d_12tracing_core5fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Value6recordCs9SMuO7kbZ2K_7git_xet }>, align 8
@130 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"'\00\00\00\00\00\00\00\DA\00\00\00i\00\00\00" }>, align 8
@_RNvNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB9_17SingleFileCleaner19add_data_chunk_impl010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@131 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"'\00\00\00\00\00\00\00\A0\00\00\00H\00\00\00" }>, align 8
@132 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"'\00\00\00\00\00\00\00\8E\00\00\00L\00\00\00" }>, align 8
@133 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXNtNtCskKLDkoKarTP_4core6future7pendingINtB2_7PendingINtNtB6_6result6ResultINtNtNtCsjHtSR7YjKD4_8xet_data13deduplication18file_deduplication11FileDeduperNtNtNtB1l_10processing23deduplication_interface24UploadSessionDataManagerENtNtB1l_5error9DataErrorEENtNtB4_6future6Future4pollCs9SMuO7kbZ2K_7git_xet }>, align 8
@134 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"'\00\00\00\00\00\00\00w\00\00\00T\00\00\00" }>, align 8
@_RNvNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB9_17SingleFileCleaner22deduper_process_chunks010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@135 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"'\00\00\00\00\00\00\00}\00\00\00 \00\00\00" }>, align 8
@136 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtBL_17SingleFileCleaner22deduper_process_chunks0s_0ECs9SMuO7kbZ2K_7git_xet, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNCNCNvMs0_NtNtCsjHtSR7YjKD4_8xet_data10processing12file_cleanerNtB9_17SingleFileCleaner22deduper_process_chunks0s_0Cs9SMuO7kbZ2K_7git_xet }>, align 8
@137 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"'\00\00\00\00\00\00\00\D0\00\00\00N\00\00\00" }>, align 8
@138 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @77, [16 x i8] c"'\00\00\00\00\00\00\00\8A\00\00\00A\00\00\00" }>, align 8
@139 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"<\00\00\00\00\00\00\00\F2\01\00\00\\\00\00\00" }>, align 8
@_RNvNCNvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB9_16ShardFileManager5flush010___CALLSITE = external global { ptr, { { { ptr } } }, { { { i8 } } }, { { { i8 } } }, [6 x i8] }
@140 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @9, [16 x i8] c"<\00\00\00\00\00\00\00\0E\02\00\00:\00\00\00" }>, align 8
@141 = private unnamed_addr constant [56 x i8] c"xet_pkg/src/legacy/progress_tracking/callback_bridge.rs\00", align 1
@142 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @141, [16 x i8] c"7\00\00\00\00\00\00\00\EE\00\00\00!\00\00\00" }>, align 8
@143 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @84, [16 x i8] c"c\00\00\00\00\00\00\00\B2\01\00\003\00\00\00" }>, align 8
@144 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @84, [16 x i8] c"c\00\00\00\00\00\00\00\8F\02\00\00\1D\00\00\00" }>, align 8
@145 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @92, [16 x i8] c"\12\00\00\00\00\00\00\00\95\00\00\00*\00\00\00" }>, align 8
@146 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.50.0/src/task/join_set.rs\00", align 1
@147 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @146, [16 x i8] c"f\00\00\00\00\00\00\00(\01\00\00G\00\00\00" }>, align 8
@148 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"%\00\00\00\00\00\00\00c\00\00\00J\00\00\00" }>, align 8
@149 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @65, [16 x i8] c"d\00\00\00\00\00\00\00\AE\01\00\008\00\00\00" }>, align 8
@150 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @65, [16 x i8] c"d\00\00\00\00\00\00\00\06\03\00\00:\00\00\00" }>, align 8
@151 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @92, [16 x i8] c"\12\00\00\00\00\00\00\00\DE\00\00\00+\00\00\00" }>, align 8
@152 = private unnamed_addr constant [93 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.50.0/src/lib.rs\00", align 1
@153 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @152, [16 x i8] c"\\\00\00\00\00\00\00\00D\02\00\00,\00\00\00" }>, align 8
@154 = private unnamed_addr constant [3 x i8] c"xet", align 1
@155 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_client12RemoteClientECs9SMuO7kbZ2K_7git_xet, [16 x i8] c"h\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client28get_file_reconstruction_info, ptr @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client18get_reconstruction, ptr @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client24batch_get_reconstruction, ptr @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client23acquire_download_permit, ptr @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client18get_file_term_data, ptr @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client28query_for_global_dedup_shard, ptr @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client21acquire_upload_permit, ptr @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client12upload_shard, ptr @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client11upload_xorb, ptr @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client21get_file_chunk_hashes }>, align 8
@156 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_client12MemoryClientECs9SMuO7kbZ2K_7git_xet, [16 x i8] c"8\02\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client28get_file_reconstruction_info, ptr @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client18get_reconstruction, ptr @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client24batch_get_reconstruction, ptr @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client23acquire_download_permit, ptr @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client18get_file_term_data, ptr @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client28query_for_global_dedup_shard, ptr @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client21acquire_upload_permit, ptr @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client12upload_shard, ptr @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client11upload_xorb, ptr @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client21get_file_chunk_hashes }>, align 8
@157 = private unnamed_addr constant [51 x i8] c"xet_data/src/processing/remote_client_interface.rs\00", align 1
@158 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @157, [16 x i8] c"2\00\00\00\00\00\00\00\0C\00\00\00\1E\00\00\00" }>, align 8
@159 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client11LocalClientECs9SMuO7kbZ2K_7git_xet, [16 x i8] c"\A8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client28get_file_reconstruction_info, ptr @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client18get_reconstruction, ptr @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client24batch_get_reconstruction, ptr @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client23acquire_download_permit, ptr @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client18get_file_term_data, ptr @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client28query_for_global_dedup_shard, ptr @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client21acquire_upload_permit, ptr @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client12upload_shard, ptr @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client11upload_xorb, ptr @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client21get_file_chunk_hashes }>, align 8
@160 = private unnamed_addr constant [11 x i8] c"HF_ENDPOINT", align 1
@161 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"\1C\00\00\00\00\00\00\00)\00\00\00K\00\00\00" }>, align 8
@162 = private unnamed_addr constant [204 x i8] c"custom transfer for download is not implemented yet. Downloads should operate through standard git-lfs download protocol.\0A            If you encounter errors downloading, contact Xet Team at Hugging Face.", align 1
@163 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"\1C\00\00\00\00\00\00\00F\00\00\00K\00\00\00" }>, align 8
@164 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @36, [16 x i8] c"\1C\00\00\00\00\00\00\00\C0\00\00\001\00\00\00" }>, align 8
@165 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT = external local_unnamed_addr global { { { i64 } } }
@166 = private unnamed_addr constant [60 x i8] c"internal error: entered unreachable code: invalid Once state", align 1
@167 = private unnamed_addr constant [87 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/std/src/sys/sync/once/futex.rs\00", align 1
@168 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @167, [16 x i8] c"V\00\00\00\00\00\00\00`\00\00\00\12\00\00\00" }>, align 8
@169 = private unnamed_addr constant <{ ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RNvNtCslc8SwK8fohf_5bytes5bytes12static_clone, ptr @_RNvNtCslc8SwK8fohf_5bytes5bytes13static_to_vec, ptr @_RNvNtCslc8SwK8fohf_5bytes5bytes13static_to_mut, ptr @_RNvNtCslc8SwK8fohf_5bytes5bytes16static_is_unique, ptr @_RNvNtCslc8SwK8fohf_5bytes5bytes11static_drop }>, align 8
@170 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"c\00\00\00\00\00\00\00\DF\00\00\00\1B\00\00\00" }>, align 8
@_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL = external local_unnamed_addr global { { { i64 } } }
@171 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/sha2-0.11.0/src/block_api.rs\00", align 1
@172 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @171, [16 x i8] c"a\00\00\00\00\00\00\00F\00\00\00\13\00\00\00" }>, align 8
@173 = private unnamed_addr constant [112 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/digest-0.11.3/src/block_api/ct_variable.rs\00", align 1
@174 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @173, [16 x i8] c"o\00\00\00\00\00\00\00q\00\00\00$\00\00\00" }>, align 8
@175 = private unnamed_addr constant [32 x i8] c"g\E6\09j\85\AEg\BBr\F3n<:\F5O\A5\7FR\0EQ\8Ch\05\9B\AB\D9\83\1F\19\CD\E0[", align 8
@176 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCs9SMuO7kbZ2K_7git_xet }>, align 8
@177 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@178 = private unnamed_addr constant [76 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/string.rs\00", align 1
@179 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @178, [16 x i8] c"K\00\00\00\00\00\00\00\9A\0B\00\00\0E\00\00\00" }>, align 8
@180 = private unnamed_addr constant [5 x i8] c"Error", align 1

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RINvMNtCskKLDkoKarTP_4core3stre5parseyECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  switch i64 %2, label %thread-pre-split.i.i [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1, !alias.scope !15, !noalias !16
  br label %_RNvXsC_NtCskKLDkoKarTP_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !alias.scope !16, !noalias !15, !noundef !17 ; 2 uses
  switch i8 %i.b, label %bb.e [
    i8 43, label %bb.d
    i8 45, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.c, align 1, !alias.scope !15, !noalias !16
  br label %_RNvXsC_NtCskKLDkoKarTP_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit

thread-pre-split.i.i:                             ; preds = %bb.a
  %.pr.i.i = load i8, ptr %1, align 1, !alias.scope !16, !noalias !15
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i.i, %bb.c
  %i.d = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.b, %bb.c ]
  %cond.i.i = icmp eq i8 %i.d, 43                 ; 2 uses
  %i.e = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %2, %i.e          ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.f = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.f, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.e
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.h
  %.not52.i.i = icmp eq i64 %i.i, 0
  br i1 %.not52.i.i, label %.loopexit.i.i, label %.preheader56.i.i.preheader

.loopexit.i.i:                                    ; preds = %.preheader56.i.i, %bb.k, %.preheader.i.i
  %.sroa.042.1.i.i = phi i64 [ %i.ad, %bb.k ], [ 0, %.preheader.i.i ], [ %i.q, %.preheader56.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.042.1.i.i, ptr %i.g, align 8, !alias.scope !15, !noalias !16
  br label %_RNvXsC_NtCskKLDkoKarTP_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit

.preheader56.i.i.preheader:                       ; preds = %bb.e, %.preheader56.i.i
  %.sroa.0.1.i.i34 = phi ptr [ %i.h, %.preheader56.i.i ], [ %.sroa.0.0.i.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i.i33 = phi i64 [ %i.i, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.e ]
  %.sroa.042.0.i.i32 = phi i64 [ %i.q, %.preheader56.i.i ], [ 0, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i34, i64 1
  %i.i = add nsw i64 %.sroa.15.1.i.i33, -1        ; 2 uses
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i32, i64 10) ; 2 uses
  %4 = extractvalue { i64, i1 } %3, 0             ; 2 uses
  %5 = extractvalue { i64, i1 } %3, 1
  %i.j = load i8, ptr %.sroa.0.1.i.i34, align 1, !alias.scope !16, !noalias !15, !noundef !17 ; 2 uses
  br i1 %5, label %bb.g, label %bb.f, !prof !18

bb.f:                                             ; preds = %.preheader56.i.i.preheader
  %i.k = zext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -48                    ; 2 uses
  %i.m = icmp ult i32 %i.l, 10
  br i1 %i.m, label %bb.h, label %.loopexit58.i.i

bb.g:                                             ; preds = %.preheader56.i.i.preheader
  %i.n = add i8 %i.j, -48
  %i.o = icmp ult i8 %i.n, 10
  br i1 %i.o, label %bb.j, label %.loopexit58.i.i

bb.h:                                             ; preds = %bb.f
  %i.p = zext nneg i32 %i.l to i64
  %i.q = add i64 %4, %i.p                         ; 3 uses
  %i.r = icmp ult i64 %i.q, %4
  br i1 %i.r, label %bb.i, label %.preheader56.i.i, !prof !18

.loopexit58.i.i:                                  ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.s, align 1, !alias.scope !15, !noalias !16
  br label %_RNvXsC_NtCskKLDkoKarTP_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.t, align 1, !alias.scope !15, !noalias !16
  br label %_RNvXsC_NtCskKLDkoKarTP_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit

bb.j:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.u, align 1, !alias.scope !15, !noalias !16
  br label %_RNvXsC_NtCskKLDkoKarTP_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.k
  %.sroa.0.269.i.i = phi ptr [ %i.ab, %bb.k ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.aa, %bb.k ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.ad, %bb.k ], [ 0, %.preheader.i.i ]
  %i.v = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !16, !noalias !15, !noundef !17
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.z = mul i64 %.sroa.042.267.i.i, 10
  %i.aa = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = add i64 %i.z, %i.ac                     ; 2 uses
  %.not53.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not53.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ae, align 1, !alias.scope !15, !noalias !16
  br label %_RNvXsC_NtCskKLDkoKarTP_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit

_RNvXsC_NtCskKLDkoKarTP_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit: ; preds = %bb.b, %bb.d, %.loopexit.i.i, %.loopexit58.i.i, %bb.i, %bb.j, %bb.l
  %.sink.i.i = phi i8 [ 1, %.loopexit58.i.i ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.l ], [ 1, %bb.d ], [ 0, %.loopexit.i.i ], [ 1, %bb.b ]
  store i8 %.sink.i.i, ptr %0, align 8, !alias.scope !15, !noalias !16
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs2_NtNtCsUrhh0HcRih_5tokio7runtime4parkNtB6_16CachedParkThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEEB2l_(ptr noalias nofree noundef nonnull %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = invoke { ptr, ptr } @_RNvMs2_NtNtCsUrhh0HcRih_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0)
          to label %bb.b unwind label %bb.t       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 6544
  %i.i = load i8, ptr %i.h, align 8, !range !19, !noundef !17
  %cond.i.i.i = icmp eq i8 %i.i, 3
  br i1 %cond.i.i.i, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEEB1u_.exit

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCs1YANDSn9Kib_7git_xet3appNtBG_11XetAgentApp3run0ECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEEB1u_.exit unwind label %bb.e

common.resume:                                    ; preds = %bb.t, %.body31, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn, %.body31 ], [ %i.as, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 6552, i64 noundef 8) #24
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEEB1u_.exit: ; preds = %bb.c, %bb.d
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 6552, i64 noundef 8) #24
  br label %bb.r

bb.f:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, ptr } %i.e, 1
  store ptr %i.f, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20
  %i.r = load i8, ptr %i.p, align 8, !range !24, !noundef !17
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i, !prof !25

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i: ; preds = %bb.g
  %i.t = invoke noundef ptr @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE16get_or_init_slowCs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %i.o)
          to label %.noexc24 unwind label %bb.l   ; 2 uses

.noexc24:                                         ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.noexc, label %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i

_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i: ; preds = %.noexc24, %bb.g
  %.sroa.0.0.i.i2.i = phi ptr [ %i.t, %.noexc24 ], [ %i.o, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 68 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !range !26, !noundef !17
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i2.i, i64 69 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1
  store i8 1, ptr %i.v, align 1
  store i8 -128, ptr %i.x, align 1
  br label %.noexc

.noexc:                                           ; preds = %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i, %.noexc24
  %.sroa.3.0.i = phi i8 [ %i.y, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i ], [ undef, %.noexc24 ]
  %.sroa.0.0.i = phi i8 [ %i.w, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.thread.i ], [ 2, %.noexc24 ]
  store i8 %.sroa.0.0.i, ptr %i.a, align 1, !noalias !20
  store i8 %.sroa.3.0.i, ptr %i.q, align 1, !noalias !20
  %i.z = invoke { i64, ptr } @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EENtB4_6Future4pollB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RNCINvMs2_NtNtCsUrhh0HcRih_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEE0B2n_.exit unwind label %bb.h ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load i8, ptr %i.a, align 1, !range !24, !alias.scope !27, !noundef !17
  %.not.i = icmp eq i8 %i.ab, 2
  br i1 %.not.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.a)
          to label %.body unwind label %bb.k

_RNCINvMs2_NtNtCsUrhh0HcRih_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEE0B2n_.exit: ; preds = %.noexc
  %i.ac = load i8, ptr %i.a, align 1, !range !24, !alias.scope !30, !noundef !17
  %.not.i27 = icmp eq i8 %i.ac, 2
  br i1 %.not.i27, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_RNCINvMs2_NtNtCsUrhh0HcRih_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEE0B2n_.exit
  invoke void @_RNvXNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.a)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.l:                                             ; preds = %bb.j, %_RNvYNCNKNvNtNtCsUrhh0HcRih_5tokio7runtime7context7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtB8_7ContextEEEE9call_onceCs9SMuO7kbZ2K_7git_xet.exit.i, %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.h, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %i.aa, %bb.h ], [ %i.aa, %bb.i ]
  %.val20 = load ptr, ptr %i.b, align 8, !nonnull !17, !noundef !17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEEB1u_(ptr nonnull %.val20) #26
          to label %.body31 unwind label %bb.s

bb.m:                                             ; preds = %bb.j, %_RNCINvMs2_NtNtCsUrhh0HcRih_5tokio7runtime4parkNtB8_16CachedParkThread8block_onINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEE0B2n_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20
  %i.af = extractvalue { i64, ptr } %i.z, 0
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvMs2_NtNtCsUrhh0HcRih_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias nofree noundef nonnull %0)
          to label %bb.g unwind label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.ah = extractvalue { i64, ptr } %i.z, 1
  %.val19 = load ptr, ptr %i.b, align 8, !nonnull !17, !noundef !17 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val19, i64 6544
  %i.aj = load i8, ptr %i.ai, align 8, !range !19, !noundef !17
  %cond.i.i.i30 = icmp eq i8 %i.aj, 3
  br i1 %cond.i.i.i30, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECs9SMuO7kbZ2K_7git_xet.exit36

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCs1YANDSn9Kib_7git_xet3appNtBG_11XetAgentApp3run0ECs9SMuO7kbZ2K_7git_xet(ptr noundef nonnull align 8 %.val19)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_4task4wake5WakerECs9SMuO7kbZ2K_7git_xet.exit36 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard28add_file_reconstruction_info
declare void @_RNvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard15shard_in_memoryNtB2_16MDBInMemoryShard28add_file_reconstruction_info(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtCs942S7uueXw1_7tracing10instrumentINtB5_12InstrumentedNCNCNvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_managerNtB19_16ShardFileManager5flush00ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtNtCsUrhh0HcRih_5tokio4sync6notifyNtB5_6Notify10notify_one(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs1YANDSn9Kib_7git_xet3app15install_command(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs1YANDSn9Kib_7git_xet3app17uninstall_command(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs1YANDSn9Kib_7git_xet3app13track_command(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNCNCNvMs_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB13_7JoinSetINtNtB9_6result6ResultuNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEE9join_next00ENtNtB7_6future6Future4pollCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB1M_5error9CoreErrorEENtNtNtB19_6future6future6Future4pollCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMNtNtNtCsUrhh0HcRih_5tokio4sync6rwlock11write_guardINtB2_16RwLockWriteGuardINtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockStateNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager15ShardBookkeeperNtNtB2t_5error9CoreErrorEE9downgradeCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio5stdin() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio6stdout() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i1 } @_RNvMs1_NtNtCsG258MDvU3F_3std2io5stdioNtB5_5Stdin4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs0_NtNtCskKLDkoKarTP_4core6future7poll_fnINtB5_6PollFnNvNtCsUrhh0HcRih_5tokio5trace10trace_leafENtNtB7_6future6Future4pollCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsjHtSR7YjKD4_8xet_data10processing14configurationsNtB2_14SessionContext10local_path(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB2_12RemoteClient3new(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client28get_file_reconstruction_info(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client18get_reconstruction(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client24batch_get_reconstruction(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 288230376151711744)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client23acquire_download_permit(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client18get_file_term_data(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noundef, ptr, i64 noundef range(i64 0, 2), i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client28query_for_global_dedup_shard(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client21acquire_upload_permit(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client12upload_shard(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noundef, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client11upload_xorb(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs0_NtNtCsiAynQAjgDuT_10xet_client10cas_client13remote_clientNtB5_12RemoteClientNtNtB7_9interface6Client21get_file_chunk_hashes(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB2_12MemoryClient3new(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client28get_file_reconstruction_info(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client18get_reconstruction(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client24batch_get_reconstruction(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 288230376151711744)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client23acquire_download_permit(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client18get_file_term_data(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noundef, ptr, i64 noundef range(i64 0, 2), i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client28query_for_global_dedup_shard(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client21acquire_upload_permit(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client12upload_shard(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noundef, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client11upload_xorb(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation13memory_clientNtB5_12MemoryClientNtNtB9_9interface6Client21get_file_chunk_hashes(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client28get_file_reconstruction_info(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client18get_reconstruction(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client24batch_get_reconstruction(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 288230376151711744)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client23acquire_download_permit(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client18get_file_term_data(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noundef, ptr, i64 noundef range(i64 0, 2), i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client28query_for_global_dedup_shard(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client21acquire_upload_permit(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client12upload_shard(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noundef, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client11upload_xorb(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsn_NtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_clientNtB5_11LocalClientNtNtB9_9interface6Client21get_file_chunk_hashes(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs1YANDSn9Kib_7git_xet8git_repoNtB2_7GitRepo17open_from_cur_dir(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs1YANDSn9Kib_7git_xet8git_repoNtB2_7GitRepo18remote_name_to_url(ptr dead_on_unwind noalias nofree noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs1YANDSn9Kib_7git_xet7git_urlNtB2_6GitUrlNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsG258MDvU3F_3std3env3varReECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs1YANDSn9Kib_7git_xet6errorsNtB3_11GitXetError13not_supportedReECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs6rZvBWPOMOk_4sha26sha25611compress256(ptr noalias nofree noundef align 4 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 144115188075855872)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsdCDTHl3mYPb_4http6header3mapNtB4_9HeaderMapNtNtCskKLDkoKarTP_4core7default7Default7defaultCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslc8SwK8fohf_5bytes5bytes13static_to_vec(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCslc8SwK8fohf_5bytes5bytes13static_to_mut(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #3

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsG258MDvU3F_3std2fs8metadataRNtNtB4_4path4PathECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsjqcU1oJFKXj_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsG258MDvU3F_3std4path7PathBufINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager16ShardFileManagerENtNtNtB13_4hash6random11RandomStateE11rustc_entryCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE8grow_oneCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking15upload_tracking18FileXorbDependencyE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structs11MDBFileInfoE7reserveCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handleNtB4_12MDBShardFile10get_reader(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(320)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB6_12MDBShardInfo27read_all_file_info_sectionsINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248), ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #18

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offseteECs9SMuO7kbZ2K_7git_xet(ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs9SMuO7kbZ2K_7git_xet(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSNtNtNtCsdCDTHl3mYPb_4http6header3map3PosENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs14_NtCsexYYUdYSQU6_5alloc4syncINtB6_3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing14configurations16TranslatorConfigEINtNtCskKLDkoKarTP_4core7convert4FromBH_E4fromCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(208)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #21

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCs94TQx44N27d_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_fmtCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsV_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCsarFSTFZzLuM_11xet_runtime5utils9unique_idNtB5_8UniqueIdNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTyyyEEp6OutputuNtNtBO_6marker4SendNtB1E_4SyncEL_E9drop_slowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs94TQx44N27d_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth14TokenRefresherEL_E9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface6ClientEL_E9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client9interface6ClientNtNtCskKLDkoKarTP_4core6marker4SendNtB1I_4SyncEL_E9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtNtCsiAynQAjgDuT_10xet_client6common4auth9interface16CredentialHelperEL_E9drop_slowBP_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEE9drop_slowB1o_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEE9drop_slowCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitor18SystemMonitorErrorEEE9drop_slowB2b_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsUrhh0HcRih_5tokio4sync6rwlock6RwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB1y_4path7PathBufIBx_NtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager16ShardFileManagerEEEE9drop_slowB2O_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs5ox3Af2aNoB_10hyper_util(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicyEE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base10PageNumberEEE9drop_slowB1S_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsg0kSldJeyDi_4git24repo10RepositoryEE9drop_slowCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtBP_2io5stdio6StdoutEE9drop_slowCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store4base17PageTrackerPolicyEE9drop_slowB1C_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtNtNtBP_11collections4hash3map7HashMapNtNtBP_4path7PathBufIBx_NtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileEEEE9drop_slowB2G_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsUrhh0HcRih_5tokio4loom3std5mutex5MutexINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultbNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEEEEE9drop_slowB3A_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsUrhh0HcRih_5tokio4loom3std5mutex5MutexINtNtNtBP_4util17idle_notified_set10ListsInnerINtNtNtNtBP_7runtime4task4join10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEEEEE9drop_slowB3A_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs4Sxm5svDswZ_18reqwest_middleware6client20ClientWithMiddlewareE9drop_slowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7SkU8gPisFf_4redb19transaction_tracker18TransactionTrackerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7SkU8gPisFf_4redb2db16TransactionGuardE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs7SkU8gPisFf_4redb2db8DatabaseE9drop_slowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsarFSTFZzLuM_11xet_runtime5error12RuntimeErrorE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs11MDBXorbInfoE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard18shard_file_manager16ShardFileManagerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync6notify6NotifyE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime4core6common9XetCommonE9drop_slowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lock15RwTaskLockErrorE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime5utils20adjustable_semaphore19AdjustableSemaphoreE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsarFSTFZzLuM_11xet_runtime6config10xet_config9XetConfigE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapE9drop_slowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl6client9ClientRefE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing14configurations16TranslatorConfigE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjHtSR7YjKD4_8xet_data10processing19file_upload_session17FileUploadSessionE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking14progress_types19UploadGroupProgressE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjHtSR7YjKD4_8xet_data17progress_tracking15upload_tracking17CompletionTrackerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCskKLDkoKarTP_4core2io5error5ErrorE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCs7SkU8gPisFf_4redb10tree_store10page_store12page_manager19TransactionalMemoryE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller20ConnectionPermitInfoE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsiAynQAjgDuT_10xet_client10cas_client20adaptive_concurrency10controller29AdaptiveConcurrencyControllerE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object5chunk5ChunkE9drop_slowCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs_NtCsbdFR6LubKyl_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs1YANDSn9Kib_7git_xet6errors11GitXetErrorE4fromCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs1YANDSn9Kib_7git_xet6errorsNtB3_11GitXetError8internalINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtB12_5mutex10MutexGuardNtNtNtB16_2io5stdio6StdoutEEECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCs1YANDSn9Kib_7git_xet6errorsNtB3_11GitXetError8internalNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), i8 noundef range(i8 0, 6)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client17map_redb_db_errorNtNtCs7SkU8gPisFf_4redb5error10TableErrorECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client17map_redb_db_errorNtNtCs7SkU8gPisFf_4redb5error11CommitErrorECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client17map_redb_db_errorNtNtCs7SkU8gPisFf_4redb5error16TransactionErrorECs9SMuO7kbZ2K_7git_xet(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12file_structsNtB5_15FileMetadataExt3new(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { cold }
attributes #27 = { noinline noreturn }
attributes #28 = { noinline }
attributes #29 = { inlinehint }
attributes #30 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RNvXsC_NtCskKLDkoKarTP_4core3numyNtNtNtB7_3str6traits7FromStr8from_str: argument 0"}
!7 = distinct !{!7, !"_RNvXsC_NtCskKLDkoKarTP_4core3numyNtNtNtB7_3str6traits7FromStr8from_str"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"_RNvXsC_NtCskKLDkoKarTP_4core3numyNtNtNtB7_3str6traits7FromStr8from_str: argument 1"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl: argument 0"}
!12 = distinct !{!12, !"_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl: argument 1"}
!15 = !{!11, !6}
!16 = !{!14, !9}
!17 = !{}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{i8 0, i8 4}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"_RINvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetINtNtNtCskKLDkoKarTP_4core4task4poll4PollINtNtBT_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEENCINvMs2_NtNtB6_7runtime4parkNtB2s_16CachedParkThread8block_onINtNtBT_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEE0EB4c_: argument 0"}
!22 = distinct !{!22, !"_RINvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetINtNtNtCskKLDkoKarTP_4core4task4poll4PollINtNtBT_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEENCINvMs2_NtNtB6_7runtime4parkNtB2s_16CachedParkThread8block_onINtNtBT_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEE0EB4c_"}
!23 = distinct !{!23, !22, !"_RINvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetINtNtNtCskKLDkoKarTP_4core4task4poll4PollINtNtBT_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEENCINvMs2_NtNtB6_7runtime4parkNtB2s_16CachedParkThread8block_onINtNtBT_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEE0EB4c_: argument 1"}
!24 = !{i8 0, i8 3}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{i8 0, i8 2}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet: argument 0"}
!29 = distinct !{!29, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet: argument 0"}
!32 = distinct !{!32, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet"}
!33 = !{i64 8}
!34 = distinct !{null}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"_RINvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetINtNtNtCskKLDkoKarTP_4core4task4poll4PollINtNtBT_6option6OptionINtNtBT_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEEENCINvMs2_NtNtB6_7runtime4parkNtB2P_16CachedParkThread8block_onINtNtNtBT_6future7poll_fn6PollFnNCNCINvMNtNtB2R_9scheduler14current_threadNtB4k_13CurrentThread8block_onINtNtBT_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEE00EE0EB6f_: argument 0"}
!37 = distinct !{!37, !"_RINvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetINtNtNtCskKLDkoKarTP_4core4task4poll4PollINtNtBT_6option6OptionINtNtBT_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEEENCINvMs2_NtNtB6_7runtime4parkNtB2P_16CachedParkThread8block_onINtNtNtBT_6future7poll_fn6PollFnNCNCINvMNtNtB2R_9scheduler14current_threadNtB4k_13CurrentThread8block_onINtNtBT_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEE00EE0EB6f_"}
!38 = distinct !{!38, !37, !"_RINvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetINtNtNtCskKLDkoKarTP_4core4task4poll4PollINtNtBT_6option6OptionINtNtBT_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEEENCINvMs2_NtNtB6_7runtime4parkNtB2P_16CachedParkThread8block_onINtNtNtBT_6future7poll_fn6PollFnNCNCINvMNtNtB2R_9scheduler14current_threadNtB4k_13CurrentThread8block_onINtNtBT_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCs9SMuO7kbZ2K_7git_xet4main0EEE00EE0EB6f_: argument 1"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet: argument 0"}
!41 = distinct !{!41, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet: argument 0"}
!44 = distinct !{!44, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet"}
!45 = distinct !{null, null}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_RINvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetINtNtNtCskKLDkoKarTP_4core4task4poll4PollINtNtBT_6option6OptionINtNtBT_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEEENCINvMs2_NtNtB6_7runtime4parkNtB2P_16CachedParkThread8block_onINtNtNtBT_6future7poll_fn6PollFnNCNCINvMNtNtB2R_9scheduler14current_threadNtB4k_13CurrentThread8block_onNCNvCs9SMuO7kbZ2K_7git_xet4main0E00EE0EB5q_: argument 0"}
!48 = distinct !{!48, !"_RINvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetINtNtNtCskKLDkoKarTP_4core4task4poll4PollINtNtBT_6option6OptionINtNtBT_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEEENCINvMs2_NtNtB6_7runtime4parkNtB2P_16CachedParkThread8block_onINtNtNtBT_6future7poll_fn6PollFnNCNCINvMNtNtB2R_9scheduler14current_threadNtB4k_13CurrentThread8block_onNCNvCs9SMuO7kbZ2K_7git_xet4main0E00EE0EB5q_"}
!49 = distinct !{!49, !48, !"_RINvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetINtNtNtCskKLDkoKarTP_4core4task4poll4PollINtNtBT_6option6OptionINtNtBT_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEEENCINvMs2_NtNtB6_7runtime4parkNtB2P_16CachedParkThread8block_onINtNtNtBT_6future7poll_fn6PollFnNCNCINvMNtNtB2R_9scheduler14current_threadNtB4k_13CurrentThread8block_onNCNvCs9SMuO7kbZ2K_7git_xet4main0E00EE0EB5q_: argument 1"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet: argument 0"}
!52 = distinct !{!52, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet: argument 0"}
!55 = distinct !{!55, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet"}
!56 = !{!57, !59}
!57 = distinct !{!57, !58, !"_RINvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetINtNtNtCskKLDkoKarTP_4core4task4poll4PollINtNtBT_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEENCINvMs2_NtNtB6_7runtime4parkNtB2s_16CachedParkThread8block_onNCNvCs9SMuO7kbZ2K_7git_xet4main0E0EB3n_: argument 0"}
!58 = distinct !{!58, !"_RINvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetINtNtNtCskKLDkoKarTP_4core4task4poll4PollINtNtBT_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEENCINvMs2_NtNtB6_7runtime4parkNtB2s_16CachedParkThread8block_onNCNvCs9SMuO7kbZ2K_7git_xet4main0E0EB3n_"}
!59 = distinct !{!59, !58, !"_RINvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budgetINtNtNtCskKLDkoKarTP_4core4task4poll4PollINtNtBT_6result6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEENCINvMs2_NtNtB6_7runtime4parkNtB2s_16CachedParkThread8block_onNCNvCs9SMuO7kbZ2K_7git_xet4main0E0EB3n_: argument 1"}
!60 = !{!61, !63}
!61 = distinct !{!61, !62, !"_RNCNvCs9SMuO7kbZ2K_7git_xet4main0B3_: argument 0"}
!62 = distinct !{!62, !"_RNCNvCs9SMuO7kbZ2K_7git_xet4main0B3_"}
!63 = distinct !{!63, !64, !"_RNCINvMs2_NtNtCsUrhh0HcRih_5tokio7runtime4parkNtB8_16CachedParkThread8block_onNCNvCs9SMuO7kbZ2K_7git_xet4main0E0B1i_: argument 0"}
!64 = distinct !{!64, !"_RNCINvMs2_NtNtCsUrhh0HcRih_5tokio7runtime4parkNtB8_16CachedParkThread8block_onNCNvCs9SMuO7kbZ2K_7git_xet4main0E0B1i_"}
!65 = !{!66, !68, !61, !63}
!66 = distinct !{!66, !67, !"_RNCNvMNtCs1YANDSn9Kib_7git_xet3appNtB4_11XetAgentApp3run0Cs9SMuO7kbZ2K_7git_xet: argument 0"}
!67 = distinct !{!67, !"_RNCNvMNtCs1YANDSn9Kib_7git_xet3appNtB4_11XetAgentApp3run0Cs9SMuO7kbZ2K_7git_xet"}
!68 = distinct !{!68, !67, !"_RNCNvMNtCs1YANDSn9Kib_7git_xet3appNtB4_11XetAgentApp3run0Cs9SMuO7kbZ2K_7git_xet: argument 1"}
!69 = !{!66}
!70 = !{!71, !73, !66, !68, !61, !63}
!71 = distinct !{!71, !72, !"_RNCNvMs_NtCs1YANDSn9Kib_7git_xet3appNtB6_7Command3run0Cs9SMuO7kbZ2K_7git_xet: argument 0"}
!72 = distinct !{!72, !"_RNCNvMs_NtCs1YANDSn9Kib_7git_xet3appNtB6_7Command3run0Cs9SMuO7kbZ2K_7git_xet"}
!73 = distinct !{!73, !72, !"_RNCNvMs_NtCs1YANDSn9Kib_7git_xet3appNtB6_7Command3run0Cs9SMuO7kbZ2K_7git_xet: argument 1"}
!74 = !{!71, !73, !66, !68}
!75 = !{!66, !68}
!76 = !{!71, !66}
!77 = !{!78, !80, !71, !73, !66, !68, !61, !63}
!78 = distinct !{!78, !79, !"_RNCNvNtCs1YANDSn9Kib_7git_xet3app16transfer_command0Cs9SMuO7kbZ2K_7git_xet: argument 0"}
!79 = distinct !{!79, !"_RNCNvNtCs1YANDSn9Kib_7git_xet3app16transfer_command0Cs9SMuO7kbZ2K_7git_xet"}
!80 = distinct !{!80, !79, !"_RNCNvNtCs1YANDSn9Kib_7git_xet3app16transfer_command0Cs9SMuO7kbZ2K_7git_xet: argument 1"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_RNvXs_NtNtCs1YANDSn9Kib_7git_xet3app9xet_agentNtB4_8XetAgentNtNtCskKLDkoKarTP_4core7default7Default7default: argument 0"}
!83 = distinct !{!83, !"_RNvXs_NtNtCs1YANDSn9Kib_7git_xet3app9xet_agentNtB4_8XetAgentNtNtCskKLDkoKarTP_4core7default7Default7default"}
!84 = !{!78, !80, !71, !73, !66, !68}
!85 = !{!78, !71, !66}
!86 = !{i64 -2, i64 11}
!87 = !{!73, !68, !61, !63}
!88 = !{i64 -1, i64 -9223372036854775808}
!89 = !{!90, !92}
!90 = distinct !{!90, !91, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs9SMuO7kbZ2K_7git_xet: argument 0"}
!91 = distinct !{!91, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std4path7PathBufEECs9SMuO7kbZ2K_7git_xet"}
!92 = distinct !{!92, !93, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1YANDSn9Kib_7git_xet3app12CliOverridesECs9SMuO7kbZ2K_7git_xet: argument 0"}
!93 = distinct !{!93, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1YANDSn9Kib_7git_xet3app12CliOverridesECs9SMuO7kbZ2K_7git_xet"}
!94 = !{!95, !61, !63}
!95 = distinct !{!95, !96, !"_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtCs1YANDSn9Kib_7git_xet6errors11GitXetErrorEE13from_residualCs9SMuO7kbZ2K_7git_xet: argument 0"}
!96 = distinct !{!96, !"_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultuNtCsbdFR6LubKyl_6anyhow5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtCs1YANDSn9Kib_7git_xet6errors11GitXetErrorEE13from_residualCs9SMuO7kbZ2K_7git_xet"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet: argument 0"}
!99 = distinct !{!99, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet: argument 0"}
!102 = distinct !{!102, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsUrhh0HcRih_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsG258MDvU3F_3std6thread5local11AccessErrorEECs9SMuO7kbZ2K_7git_xet"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBO_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3geteECs9SMuO7kbZ2K_7git_xet: argument 0"}
!105 = distinct !{!105, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBO_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3geteECs9SMuO7kbZ2K_7git_xet"}
!106 = !{!107}
!107 = distinct !{!107, !105, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringBO_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3geteECs9SMuO7kbZ2K_7git_xet: argument 1"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs9SMuO7kbZ2K_7git_xet: argument 0"}
!110 = distinct !{!110, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs9SMuO7kbZ2K_7git_xet"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!113 = distinct !{!113, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!114 = !{!112, !109, !104}
!115 = !{!116, !117, !107}
!116 = distinct !{!116, !113, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!117 = distinct !{!117, !110, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs9SMuO7kbZ2K_7git_xet: argument 1"}
!118 = !{!119, !112, !116, !109}
!119 = distinct !{!119, !120, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!120 = distinct !{!120, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!121 = !{!122, !112, !116, !109}
!122 = distinct !{!122, !123, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs9SMuO7kbZ2K_7git_xet: argument 0"}
!123 = distinct !{!123, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBS_EE4findNCINvNtBa_3map14equivalent_keyeBS_BS_E0E0Cs9SMuO7kbZ2K_7git_xet"}
!124 = !{i64 0, i64 -9223372036854775808}
!125 = !{i64 1, i64 536870913}
!126 = !{i64 0, i64 3}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs942S7uueXw1_7tracing4span5InnerECs9SMuO7kbZ2K_7git_xet: argument 0"}
!129 = distinct !{!129, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs942S7uueXw1_7tracing4span5InnerECs9SMuO7kbZ2K_7git_xet"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchECs9SMuO7kbZ2K_7git_xet: argument 0"}
!132 = distinct !{!132, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs94TQx44N27d_12tracing_core10dispatcher8DispatchECs9SMuO7kbZ2K_7git_xet"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs94TQx44N27d_12tracing_core10dispatcher4KindINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECs9SMuO7kbZ2K_7git_xet: argument 0"}
!135 = distinct !{!135, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs94TQx44N27d_12tracing_core10dispatcher4KindINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtBG_10subscriber10SubscriberNtNtB4_6marker4SendNtB2v_4SyncEL_EEECs9SMuO7kbZ2K_7git_xet"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs94TQx44N27d_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECs9SMuO7kbZ2K_7git_xet: argument 0"}
!138 = distinct !{!138, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs94TQx44N27d_12tracing_core10subscriber10SubscriberNtNtB4_6marker4SendNtB26_4SyncEL_EECs9SMuO7kbZ2K_7git_xet"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs94TQx44N27d_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet: argument 0"}
!141 = distinct !{!141, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs94TQx44N27d_12tracing_core10subscriber10SubscriberNtNtCskKLDkoKarTP_4core6marker4SendNtB1D_4SyncEL_ENtNtNtB1F_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet"}
!142 = !{!140, !137, !134, !131, !128}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsakO97VULfQA_8tempfile3dir7TempDirECs9SMuO7kbZ2K_7git_xet: argument 0"}
!145 = distinct !{!145, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsakO97VULfQA_8tempfile3dir7TempDirECs9SMuO7kbZ2K_7git_xet"}
!146 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs9SMuO7kbZ2K_7git_xet: argument 0"}
!149 = distinct !{!149, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs9SMuO7kbZ2K_7git_xet"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECs9SMuO7kbZ2K_7git_xet: argument 0"}
!152 = distinct !{!152, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECs9SMuO7kbZ2K_7git_xet"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet: argument 0"}
!155 = distinct !{!155, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet"}
!156 = !{!154, !151, !157}
!157 = distinct !{!157, !158, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore20OwnedSemaphorePermitECs9SMuO7kbZ2K_7git_xet: argument 0"}
!158 = distinct !{!158, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore20OwnedSemaphorePermitECs9SMuO7kbZ2K_7git_xet"}
!159 = !{!154, !151}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECs9SMuO7kbZ2K_7git_xet: argument 0"}
!162 = distinct !{!162, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreEECs9SMuO7kbZ2K_7git_xet"}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet: argument 0"}
!165 = distinct !{!165, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio4sync9semaphore9SemaphoreENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet"}
!166 = !{!164, !161, !157}
!167 = !{!164, !161}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth14TokenRefresherEL_EECs9SMuO7kbZ2K_7git_xet: argument 0"}
!170 = distinct !{!170, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth14TokenRefresherEL_EECs9SMuO7kbZ2K_7git_xet"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth14TokenRefresherEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet: argument 0"}
!173 = distinct !{!173, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth14TokenRefresherEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet"}
!174 = !{!172, !169, !175}
!175 = distinct !{!175, !176, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth10AuthConfigECs9SMuO7kbZ2K_7git_xet: argument 0"}
!176 = distinct !{!176, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth10AuthConfigECs9SMuO7kbZ2K_7git_xet"}
!177 = !{!172, !169}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth14TokenRefresherEL_EECs9SMuO7kbZ2K_7git_xet: argument 0"}
!180 = distinct !{!180, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth14TokenRefresherEL_EECs9SMuO7kbZ2K_7git_xet"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth14TokenRefresherEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet: argument 0"}
!183 = distinct !{!183, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsiAynQAjgDuT_10xet_client10cas_client4auth14TokenRefresherEL_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet"}
!184 = !{!182, !179, !175}
!185 = !{!182, !179}
!186 = !{!187, !189}
!187 = distinct !{!187, !188, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultNtCs6rZvBWPOMOk_4sha26Sha256NtNtB12_5error9JoinErrorEEEECs9SMuO7kbZ2K_7git_xet: argument 0"}
end_hunk_1
