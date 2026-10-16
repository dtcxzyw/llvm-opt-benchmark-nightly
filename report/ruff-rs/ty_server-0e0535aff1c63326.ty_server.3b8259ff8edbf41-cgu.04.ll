Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_server-0e0535aff1c63326.ty_server.3b8259ff8edbf41-cgu.04?download=true
inline.NumInlined: 2094
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0
@_RNvNvNCNvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB8_4Pool3new0s0_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00V\00\00\00", ptr @123, [8 x i8] c"<\00\00\00\00\00\00\00", ptr @121, [8 x i8] c")\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB6_4Pool3new0s0_10___CALLSITE, ptr @118, ptr @121, [8 x i8] c")\00\00\00\00\00\00\00", ptr @122, [9 x i8] c"3\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@124 = private unnamed_addr constant [60 x i8] c"event crates/ty_server/src/server/schedule/thread/pool.rs:90", align 1
@_RNvNvNCNvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB8_4Pool3new0s1_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00Z\00\00\00", ptr @124, [8 x i8] c"<\00\00\00\00\00\00\00", ptr @121, [8 x i8] c")\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB6_4Pool3new0s1_10___CALLSITE, ptr @118, ptr @121, [8 x i8] c")\00\00\00\00\00\00\00", ptr @122, [9 x i8] c"3\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@125 = private unnamed_addr constant [60 x i8] c"event crates/ty_server/src/server/schedule/thread/pool.rs:82", align 1
@_RNvNvNCNvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB8_4Pool3new0s_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00R\00\00\00", ptr @125, [8 x i8] c"<\00\00\00\00\00\00\00", ptr @121, [8 x i8] c")\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB6_4Pool3new0s_10___CALLSITE, ptr @118, ptr @121, [8 x i8] c")\00\00\00\00\00\00\00", ptr @122, [9 x i8] c"3\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@126 = private unnamed_addr constant [40 x i8] c"event crates/ty_server/src/server.rs:210", align 1
@_RNvNvNCNvMs_NtCsjNt1Wzngcv_9ty_server6serverNtBa_22ServerPanicHookHandler3new010___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00\D2\00\00\00", ptr @126, [8 x i8] c"(\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMs_NtCsjNt1Wzngcv_9ty_server6serverNtB8_22ServerPanicHookHandler3new010___CALLSITE, ptr @118, ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @119, [9 x i8] c"\1E\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@127 = private unnamed_addr constant [36 x i8] c"event crates/ty_server/src/lib.rs:68", align 1
@128 = private unnamed_addr constant [9 x i8] c"ty_server", align 1
@129 = private unnamed_addr constant [27 x i8] c"crates/ty_server/src/lib.rs", align 1
@_RNvNvNvCsjNt1Wzngcv_9ty_server10run_server10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\03\00\00\00\00\00\00\00\01\00\00\00D\00\00\00", ptr @127, [8 x i8] c"$\00\00\00\00\00\00\00", ptr @128, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvCsjNt1Wzngcv_9ty_server10run_server10___CALLSITE, ptr @118, ptr @128, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @129, [9 x i8] c"\1B\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@130 = private unnamed_addr constant [36 x i8] c"event crates/ty_server/src/lib.rs:70", align 1
@_RNvNvNvCsjNt1Wzngcv_9ty_server10run_servers_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00F\00\00\00", ptr @130, [8 x i8] c"$\00\00\00\00\00\00\00", ptr @128, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvCsjNt1Wzngcv_9ty_server10run_servers_10___CALLSITE, ptr @118, ptr @128, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @129, [9 x i8] c"\1B\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@131 = private unnamed_addr constant [39 x i8] c"event crates/ty_server/src/server.rs:69", align 1
@_RNvNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB6_6Server3new10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\01\00\00\00E\00\00\00", ptr @131, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3new10___CALLSITE, ptr @118, ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @119, [9 x i8] c"\1E\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@132 = private unnamed_addr constant [39 x i8] c"event crates/ty_server/src/server.rs:73", align 1
@_RNvNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB6_6Server3news0_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00I\00\00\00", ptr @132, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news0_10___CALLSITE, ptr @118, ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @119, [9 x i8] c"\1E\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@133 = private unnamed_addr constant [39 x i8] c"event crates/ty_server/src/server.rs:77", align 1
@_RNvNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB6_6Server3news1_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00M\00\00\00", ptr @133, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news1_10___CALLSITE, ptr @118, ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @119, [9 x i8] c"\1E\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@134 = private unnamed_addr constant [39 x i8] c"event crates/ty_server/src/server.rs:84", align 1
@_RNvNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB6_6Server3news2_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\02\00\00\00\00\00\00\00\01\00\00\00T\00\00\00", ptr @134, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news2_10___CALLSITE, ptr @118, ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @119, [9 x i8] c"\1E\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@135 = private unnamed_addr constant [39 x i8] c"event crates/ty_server/src/server.rs:72", align 1
@_RNvNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB6_6Server3news_10___CALLSITE4META = internal constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00H\00\00\00", ptr @135, [8 x i8] c"'\00\00\00\00\00\00\00", ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news_10___CALLSITE, ptr @118, ptr @115, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @119, [9 x i8] c"\1E\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@136 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -5791696640979232450 to ptr), ptr inttoptr (i64 -7626812429229352891 to ptr) }>, align 8
@137 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1847982735506221469 to ptr), ptr inttoptr (i64 7929053574417115764 to ptr) }>, align 8
@138 = private unnamed_addr constant [28 x i8] c"WORKSPACE_DIAGNOSTIC_REFRESH", align 1
@139 = private unnamed_addr constant [18 x i8] c"INLAY_HINT_REFRESH", align 1
@140 = private unnamed_addr constant [16 x i8] c"PULL_DIAGNOSTICS", align 1
@141 = private unnamed_addr constant [28 x i8] c"TYPE_DEFINITION_LINK_SUPPORT", align 1
@142 = private unnamed_addr constant [23 x i8] c"DEFINITION_LINK_SUPPORT", align 1
@143 = private unnamed_addr constant [24 x i8] c"DECLARATION_LINK_SUPPORT", align 1
@144 = private unnamed_addr constant [24 x i8] c"PREFER_MARKDOWN_IN_HOVER", align 1
@145 = private unnamed_addr constant [25 x i8] c"MULTILINE_SEMANTIC_TOKENS", align 1
@146 = private unnamed_addr constant [30 x i8] c"SIGNATURE_LABEL_OFFSET_SUPPORT", align 1
@147 = private unnamed_addr constant [34 x i8] c"SIGNATURE_ACTIVE_PARAMETER_SUPPORT", align 1
@148 = private unnamed_addr constant [36 x i8] c"HIERARCHICAL_DOCUMENT_SYMBOL_SUPPORT", align 1
@149 = private unnamed_addr constant [18 x i8] c"WORK_DONE_PROGRESS", align 1
@150 = private unnamed_addr constant [20 x i8] c"FILE_WATCHER_SUPPORT", align 1
@151 = private unnamed_addr constant [29 x i8] c"RELATIVE_FILE_WATCHER_SUPPORT", align 1
@152 = private unnamed_addr constant [31 x i8] c"DIAGNOSTIC_DYNAMIC_REGISTRATION", align 1
@153 = private unnamed_addr constant [23 x i8] c"WORKSPACE_CONFIGURATION", align 1
@154 = private unnamed_addr constant [37 x i8] c"COMPLETION_ITEM_LABEL_DETAILS_SUPPORT", align 1
@155 = private unnamed_addr constant [30 x i8] c"DIAGNOSTIC_RELATED_INFORMATION", align 1
@156 = private unnamed_addr constant [29 x i8] c"PREFER_MARKDOWN_IN_COMPLETION", align 1
@157 = private unnamed_addr constant [31 x i8] c"COMPLETION_ITEM_SNIPPET_SUPPORT", align 1
@158 = private unnamed_addr constant [22 x i8] c"FULL_DIAGNOSTIC_OUTPUT", align 1
@159 = private unnamed_addr constant [27 x i8] c"IMPLEMENTATION_LINK_SUPPORT", align 1
@160 = private unnamed_addr constant [30 x i8] c"TRIGGER_SIGNATURE_HELP_COMMAND", align 1
@161 = private unnamed_addr constant <{ ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8], ptr, [12 x i8], [4 x i8] }> <{ ptr @138, [12 x i8] c"\1C\00\00\00\00\00\00\00\01\00\00\00", [4 x i8] undef, ptr @139, [12 x i8] c"\12\00\00\00\00\00\00\00\02\00\00\00", [4 x i8] undef, ptr @140, [12 x i8] c"\10\00\00\00\00\00\00\00\04\00\00\00", [4 x i8] undef, ptr @141, [12 x i8] c"\1C\00\00\00\00\00\00\00\08\00\00\00", [4 x i8] undef, ptr @142, [12 x i8] c"\17\00\00\00\00\00\00\00\10\00\00\00", [4 x i8] undef, ptr @143, [12 x i8] c"\18\00\00\00\00\00\00\00 \00\00\00", [4 x i8] undef, ptr @144, [12 x i8] c"\18\00\00\00\00\00\00\00@\00\00\00", [4 x i8] undef, ptr @145, [12 x i8] c"\19\00\00\00\00\00\00\00\80\00\00\00", [4 x i8] undef, ptr @146, [12 x i8] c"\1E\00\00\00\00\00\00\00\00\01\00\00", [4 x i8] undef, ptr @147, [12 x i8] c"\22\00\00\00\00\00\00\00\00\02\00\00", [4 x i8] undef, ptr @148, [12 x i8] c"$\00\00\00\00\00\00\00\00\04\00\00", [4 x i8] undef, ptr @149, [12 x i8] c"\12\00\00\00\00\00\00\00\00\08\00\00", [4 x i8] undef, ptr @150, [12 x i8] c"\14\00\00\00\00\00\00\00\00\10\00\00", [4 x i8] undef, ptr @151, [12 x i8] c"\1D\00\00\00\00\00\00\00\00 \00\00", [4 x i8] undef, ptr @152, [12 x i8] c"\1F\00\00\00\00\00\00\00\00@\00\00", [4 x i8] undef, ptr @153, [12 x i8] c"\17\00\00\00\00\00\00\00\00\80\00\00", [4 x i8] undef, ptr @154, [12 x i8] c"%\00\00\00\00\00\00\00\00\00\01\00", [4 x i8] undef, ptr @155, [12 x i8] c"\1E\00\00\00\00\00\00\00\00\00\02\00", [4 x i8] undef, ptr @156, [12 x i8] c"\1D\00\00\00\00\00\00\00\00\00\04\00", [4 x i8] undef, ptr @157, [12 x i8] c"\1F\00\00\00\00\00\00\00\00\00\08\00", [4 x i8] undef, ptr @158, [12 x i8] c"\16\00\00\00\00\00\00\00\00\00\10\00", [4 x i8] undef, ptr @159, [12 x i8] c"\1B\00\00\00\00\00\00\00\00\00 \00", [4 x i8] undef, ptr @160, [12 x i8] c"\1E\00\00\00\00\00\00\00\00\00@\00", [4 x i8] undef }>, align 8
@162 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtReNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server }>, align 8
@163 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseECsjNt1Wzngcv_9ty_server, [16 x i8] c"\80\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtB2_3Any7type_idCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa5zalsa13ZalsaDatabase6zalsasCsjNt1Wzngcv_9ty_server, ptr @_RNvXs7_NtCs45bxiIjzMqg_5salsa7storageNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCsjNt1Wzngcv_9ty_server, ptr @_RNvXs7_NtCs45bxiIjzMqg_5salsa7storageNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutCsjNt1Wzngcv_9ty_server, ptr @_RNvXs7_NtCs45bxiIjzMqg_5salsa7storageNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCsjNt1Wzngcv_9ty_server, ptr @_RNvXs0_NtCs45bxiIjzMqg_5salsa8databaseNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtB5_13AsDynDatabase15as_dyn_databaseCsjNt1Wzngcv_9ty_server, ptr @17, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database20trigger_lru_evictionCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database15synthetic_writeCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database20trigger_cancellationCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database18cancellation_tokenCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database21report_untracked_readCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database21ingredient_debug_nameCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database28unwind_if_revision_cancelledCsjNt1Wzngcv_9ty_server, ptr @_RNvXsg_NtCs4o81Y09oZk1_10ty_project2dbNtB5_15ProjectDatabaseNtNtCs45bxiIjzMqg_5salsa8database8Database25zalsa_register_downcaster }>, align 8
@164 = private unnamed_addr constant [22 x i8] c"\11Invalid command `\C0\01`\00", align 1
@165 = private unnamed_addr constant [62 x i8] c"fatal runtime error: thread result panicked on drop, aborting\0A", align 1
@166 = private unnamed_addr constant [38 x i8] c"Index to contain an URI for every cell", align 1
@167 = private unnamed_addr constant [39 x i8] c"crates/ty_server/src/document/range.rs\00", align 1
@168 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @167, [16 x i8] c"&\00\00\00\00\00\00\00<\01\00\00\12\00\00\00" }>, align 8
@169 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os13OsSystemInnerENtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server }>, align 8
@170 = private unnamed_addr constant [8 x i8] c"OsSystem", align 1
@171 = private unnamed_addr constant [5 x i8] c"inner", align 1
@172 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs8_NtCs2AWtUsOyxgP_3std2fsRNtB5_4FileNtNtB7_2io5Write5write, ptr @_RNvXs8_NtCs2AWtUsOyxgP_3std2fsRNtB5_4FileNtNtB7_2io5Write14write_vectored, ptr @_RNvXs8_NtCs2AWtUsOyxgP_3std2fsRNtB5_4FileNtNtB7_2io5Write17is_write_vectored, ptr @_RNvXs8_NtCs2AWtUsOyxgP_3std2fsRNtB5_4FileNtNtB7_2io5Write5flush, ptr @_RNvYRNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtB7_2io5Write9write_allCsjNt1Wzngcv_9ty_server, ptr @_RNvYRNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtB7_2io5Write18write_all_vectoredCsjNt1Wzngcv_9ty_server, ptr @_RNvYRNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtB7_2io5Write9write_fmtCsjNt1Wzngcv_9ty_server }>, align 8
@173 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write5write, ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write14write_vectored, ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write17is_write_vectored, ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write5flush, ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write9write_all, ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write18write_all_vectored, ptr @_RNvXso_NtNtCs2AWtUsOyxgP_3std2io5stdioNtB5_6StderrNtB7_5Write9write_fmt }>, align 8
@174 = private unnamed_addr constant [4 x i8] c"None", align 1
@175 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsjNt1Wzngcv_9ty_server7logging8LogLevelNtB6_5Debug3fmtBA_ }>, align 8
@176 = private unnamed_addr constant [4 x i8] c"Some", align 1
@177 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server }>, align 8
@178 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures10ClientInfoNtB6_5Debug3fmtCsjNt1Wzngcv_9ty_server }>, align 8
@179 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemECsjNt1Wzngcv_9ty_server, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtCs4NRVxsYgnAr_4core3anyNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB2_3Any7type_idCsjNt1Wzngcv_9ty_server }>, align 8
@180 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemECsjNt1Wzngcv_9ty_server, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs5_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System13path_metadata, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System17canonicalize_path, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System12is_same_file, ptr @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_6System11source_typeCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_6System24virtual_path_source_typeCsjNt1Wzngcv_9ty_server, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System5which, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System11run_command, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System14read_to_string, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System16read_to_notebook, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System27read_virtual_path_to_string, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System29read_virtual_path_to_notebook, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System11path_exists, ptr @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_6System12is_directoryCsjNt1Wzngcv_9ty_server, ptr @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_6System7is_fileCsjNt1Wzngcv_9ty_server, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System17current_directory, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System21user_config_directory, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System9cache_dir, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System14read_directory, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System14walk_directory, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System7env_var, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System11as_writable, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System6as_any, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System10as_any_mut, ptr @_RNvXs_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB4_8OsSystemNtB6_6System9dyn_clone, ptr @_RNvXs0_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtB7_14WritableSystem15create_new_file, ptr @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_14WritableSystem10write_fileCsjNt1Wzngcv_9ty_server, ptr @_RNvXs0_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtB7_14WritableSystem16write_file_bytes, ptr @_RNvXs0_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtB7_14WritableSystem20create_directory_all, ptr @_RNvYNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtB6_14WritableSystem12get_or_cacheCsjNt1Wzngcv_9ty_server, ptr @_RNvXs0_NtNtCs56aZGHL6Dc6_7ruff_db6system2osNtB5_8OsSystemNtB7_14WritableSystem9dyn_clone }>, align 8
@181 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtCsjNt1Wzngcv_9ty_server7logging8LogLevelENtNtB7_3fmt5Debug3fmtBO_ }>, align 8
@182 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECsjNt1Wzngcv_9ty_server, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufENtNtB7_3fmt5Debug3fmtCsjNt1Wzngcv_9ty_server }>, align 8
@183 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsjNt1Wzngcv_9ty_server7session7options13ClientOptionsNtB6_5Debug3fmtBC_ }>, align 8
@184 = private unnamed_addr constant [21 x i8] c"InitializationOptions", align 1
@185 = private unnamed_addr constant [9 x i8] c"log_level", align 1
@186 = private unnamed_addr constant [8 x i8] c"log_file", align 1
@187 = private unnamed_addr constant [7 x i8] c"options", align 1
@188 = private unnamed_addr constant [4 x i8] zeroinitializer, align 4
@189 = private unnamed_addr constant [6 x i8] c"\C1 \00\80`\00", align 1
@190 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsjNt1Wzngcv_9ty_server, align 8
@191 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@192 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @191, [24 x i8] zeroinitializer }>, align 8
@193 = private unnamed_addr constant [76 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/std/src/io/stdio.rs\00", align 1
@194 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @193, [16 x i8] c"K\00\00\00\00\00\00\00?\04\00\00\14\00\00\00" }>, align 8
@195 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1883480804971965807 to ptr), ptr inttoptr (i64 -6170572597727246856 to ptr) }>, align 8
@switch.table._RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskEUeM34gmJU_6ty_ide15semantic_tokens17SemanticTokenTypeENCNvNtCsjNt1Wzngcv_9ty_server12capabilities19server_capabilitiess_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB4A_3vecINtB5g_3VecB4w_E14extend_trustedBN_E0E0EB2t_ = private unnamed_addr constant [15 x i8] c"\09\05\09\0D\0C\08\08\08\06\07\06\06\09\0F\0D", align 8
@switch.table._RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskEUeM34gmJU_6ty_ide15semantic_tokens17SemanticTokenTypeENCNvNtCsjNt1Wzngcv_9ty_server12capabilities19server_capabilitiess_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB4A_3vecINtB5g_3VecB4w_E14extend_trustedBN_E0E0EB2t_.293 = private unnamed_addr constant [15 x ptr] [ptr @35, ptr @36, ptr @37, ptr @38, ptr @39, ptr @40, ptr @41, ptr @42, ptr @43, ptr @44, ptr @45, ptr @46, ptr @47, ptr @48, ptr @49], align 8
@switch.table._RNvMNtCsjNt1Wzngcv_9ty_server6serverNtB2_6Server3new = private unnamed_addr constant [3 x i64] [i64 -9223372036854775807, i64 -9223372036854775806, i64 -9223372036854775808], align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtB3_4Pool5spawnNCNvMB7_NtB7_9Scheduler8dispatch0EBb_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, i1 noundef zeroext %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = zext i1 %1 to i8                         ; 2 uses
  store i8 %i.f, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !45
  %i.g = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 897) 56, i64 noundef 8) #35, !noalias !45 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCINvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtBJ_4Pool5spawnNCNvMBN_NtBN_9Scheduler8dispatch0E0E3newBR_.exit, !prof !3

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #42
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtBH_4Pool5spawnNCNvMBL_NtBL_9Scheduler8dispatch0E0EBP_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #43
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCINvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtBJ_4Pool5spawnNCNvMBN_NtBN_9Scheduler8dispatch0E0E3newBR_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.f, ptr %i.k, align 8
  store ptr %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs2_NtCsfCaL8mGBm0d_17crossbeam_channel7channelINtB5_6SenderNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobE4sendB19_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !4, !alias.scope !46, !noundef !5
  %.not.i = icmp eq i8 %i.n, 2
  br i1 %.not.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobEE6unwrapB1I_.exit, label %bb.e, !prof !6

bb.e:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCINvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtBJ_4Pool5spawnNCNvMBN_NtBN_9Scheduler8dispatch0E0E3newBR_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #42
          to label %bb.g unwind label %bb.f, !noalias !46

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobEEB1B_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #43
          to label %common.resume unwind label %bb.h, !noalias !46

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !46
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuINtNtCsfCaL8mGBm0d_17crossbeam_channel3err9SendErrorNtNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4pool3JobEE6unwrapB1I_.exit: ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNCINvMNtNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6thread4poolNtBJ_4Pool5spawnNCNvMBN_NtBN_9Scheduler8dispatch0E0E3newBR_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCscdodAO9FK5_5alloc6string6Stringj1_ECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsjNt1Wzngcv_9ty_server.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsjNt1Wzngcv_9ty_server.exit.i.i: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors16NotebookSelectorj1_ECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !59, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(216) %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %2) #43
          to label %common.resume.i.i unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.d = load i64, ptr %2, align 8, !range !8, !alias.scope !60, !noundef !5
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors16NotebookSelectorECsjNt1Wzngcv_9ty_server.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34NotebookDocumentFilterWithNotebookECsjNt1Wzngcv_9ty_server.exit.sink.split.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume.i.i:                                ; preds = %bb.l, %bb.k, %bb.f, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.f, %bb.f ], [ %i.l, %bb.l ], [ %i.k, %bb.k ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.h:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.i = load i64, ptr %1, align 8, !range !9, !alias.scope !61, !noundef !5
  %i.j = icmp eq i64 %i.i, -2
  br i1 %i.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(216) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %2) #43
          to label %common.resume.i.i unwind label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i.i.i: ; preds = %bb.j, %bb.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34NotebookDocumentFilterWithNotebookECsjNt1Wzngcv_9ty_server.exit.sink.split.i.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34NotebookDocumentFilterWithNotebookECsjNt1Wzngcv_9ty_server.exit.sink.split.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i.i.i, %bb.e
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20NotebookCellLanguageENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors16NotebookSelectorECsjNt1Wzngcv_9ty_server.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors16NotebookSelectorECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34NotebookDocumentFilterWithNotebookECsjNt1Wzngcv_9ty_server.exit.sink.split.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultIB1n_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !66, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !68, !noundef !5 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !68, !noundef !5 ; 6 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvXs4_NtCsiXichZnxgbf_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit

bb.e:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !invariant.load !5, !noalias !68 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.i(ptr noundef nonnull %i.d)
          to label %bb.g unwind label %bb.i, !noalias !68

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !10, !invariant.load !5, !noalias !68 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !11, !invariant.load !5, !noalias !68
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #35, !noalias !68
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !10, !invariant.load !5, !noalias !68 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server.exit4.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !11, !invariant.load !5, !noalias !68
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #35, !noalias !68
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server.exit4.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server.exit4.i.i.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtCsiXichZnxgbf_6anyhow5ErrorEINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECsjNt1Wzngcv_9ty_server(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !71, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !71, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !71 ; 6 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.f = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !71 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.g, !noalias !71

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !10, !invariant.load !5, !noalias !71 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !11, !invariant.load !5, !noalias !71
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #35, !noalias !71
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !10, !invariant.load !5, !noalias !71 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !11, !invariant.load !5, !noalias !71
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #35, !noalias !71
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server.exit4.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.a, %bb.b, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtCsl4BgoAJVhPh_3url3UrlEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsl4BgoAJVhPh_3url3UrlEECsjNt1Wzngcv_9ty_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsl4BgoAJVhPh_3url3UrlENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsl4BgoAJVhPh_3url3UrlEECsjNt1Wzngcv_9ty_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsl4BgoAJVhPh_3url3UrlENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtCsl4BgoAJVhPh_3url3UrlEECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtCsl4BgoAJVhPh_3url3UrlEECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsl4BgoAJVhPh_3url3UrlEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsl4BgoAJVhPh_3url3UrlENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

end_hunk_0
begin_hunk_1_@_RNvMNtCsjNt1Wzngcv_9ty_server6serverNtB2_6Server3new:bb.a
  %.sroa.02.0.i.i.i.i = phi i8 [ %i.vl, %bb.dx ], [ %.sroa.0.0.i.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations20PositionEncodingKindNtNtCsjNt1Wzngcv_9ty_server8document16PositionEncodingB2u_NCNCNvMNtB2y_6serverNtB3x_6Server27find_best_position_encodings_00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldB2u_NvYB2u_NtNtBa_3cmp3Ord3cmpE0E0B2y_.exit.i.i.i.i ] ; 3 uses
  %i.vs = getelementptr inbounds nuw [24 x i8], ptr %i.vm, i64 %.sroa.04.0.i.i.i.i
  %i.vt = invoke noundef range(i8 -1, 3) i8 @_RNvXs3_NtCsjNt1Wzngcv_9ty_server8documentNtB5_16PositionEncodingINtNtCs4NRVxsYgnAr_4core7convert7TryFromRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations20PositionEncodingKindE8try_from(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vs)
          to label %.noexc363 unwind label %.loopexit ; 3 uses

.noexc363:                                        ; preds = %bb.dy
  %.not.i.i.i.i.i = icmp eq i8 %i.vt, -1
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations20PositionEncodingKindNtNtCsjNt1Wzngcv_9ty_server8document16PositionEncodingB2u_NCNCNvMNtB2y_6serverNtB3x_6Server27find_best_position_encodings_00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldB2u_NvYB2u_NtNtBa_3cmp3Ord3cmpE0E0B2y_.exit.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %.noexc363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !3017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !3017
  store i8 %.sroa.02.0.i.i.i.i, ptr %i.bu, align 1, !noalias !3018
  store i8 %i.vt, ptr %i.bt, align 1, !noalias !3018
  %i.vu = invoke noundef i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYNtNtCsjNt1Wzngcv_9ty_server8document16PositionEncodingNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B2g_EE9call_onceBV_(ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bu, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bt)
          to label %.noexc364 unwind label %.loopexit

.noexc364:                                        ; preds = %bb.dz
  %i.vv = icmp sgt i8 %i.vu, 0
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.vv, i8 %.sroa.02.0.i.i.i.i, i8 %i.vt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !3017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !3017
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations20PositionEncodingKindNtNtCsjNt1Wzngcv_9ty_server8document16PositionEncodingB2u_NCNCNvMNtB2y_6serverNtB3x_6Server27find_best_position_encodings_00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldB2u_NvYB2u_NtNtBa_3cmp3Ord3cmpE0E0B2y_.exit.i.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations20PositionEncodingKindNtNtCsjNt1Wzngcv_9ty_server8document16PositionEncodingB2u_NCNCNvMNtB2y_6serverNtB3x_6Server27find_best_position_encodings_00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldB2u_NvYB2u_NtNtBa_3cmp3Ord3cmpE0E0B2y_.exit.i.i.i.i: ; preds = %.noexc364, %.noexc363
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i.i, %.noexc364 ], [ %.sroa.02.0.i.i.i.i, %.noexc363 ] ; 2 uses
  %i.vw = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.vx = icmp eq i64 %i.vw, %i.vr
  br i1 %i.vx, label %_RNvMNtCsjNt1Wzngcv_9ty_server6serverNtB2_6Server27find_best_position_encoding.exit, label %bb.dy

bb.ea:                                            ; preds = %bb.do, %bb.dl, %bb.dk, %bb.dp
  %i.vy = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.vz = icmp eq i8 %i.vy, 0
  br i1 %i.vz, label %bb.eb, label %bb.du

bb.eb:                                            ; preds = %bb.ea
  %i.wa = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.wb = icmp ult i64 %i.wa, 6
  call void @llvm.assume(i1 %i.wb)
  %i.wc = icmp samesign ugt i64 %i.wa, 3
  br i1 %i.wc, label %bb.ec, label %bb.du

bb.ec:                                            ; preds = %bb.eb
  %i.wd = load ptr, ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news1_10___CALLSITE, align 8, !nonnull !5, !align !19, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 32
  %i.wf = load ptr, ptr %i.we, align 8, !nonnull !5, !noundef !5
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wd, i64 40
  %i.wh = load i64, ptr %i.wg, align 8, !noundef !5
  store i64 4, ptr %i.em, align 8
  %.sroa.3197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %i.wf, ptr %.sroa.3197.0..sroa_idx, align 8
  %.sroa.5198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 %i.wh, ptr %.sroa.5198.0..sroa_idx, align 8
  %i.wi = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.ed unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ed:                                            ; preds = %bb.ec
  %i.wj = extractvalue { ptr, ptr } %i.wi, 0      ; 2 uses
  %i.wk = extractvalue { ptr, ptr } %i.wi, 1      ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 24
  %i.wm = load ptr, ptr %i.wl, align 8, !invariant.load !5, !nonnull !5
  %i.wn = invoke noundef zeroext i1 %i.wm(ptr noundef %i.wj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.em)
          to label %bb.ee unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ee:                                            ; preds = %bb.ed
  br i1 %i.wn, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  %i.wo = load ptr, ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news1_10___CALLSITE, align 8, !nonnull !5, !align !19, !noundef !5
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  store ptr %i.er, ptr %i.ei, align 8
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr @_RNvXNtCsjNt1Wzngcv_9ty_server12capabilitiesNtB2_26ResolvedClientCapabilitiesNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4202.0..sroa_idx, align 8
  store ptr @71, ptr %i.ej, align 8
  %i.wq = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.ei, ptr %i.wq, align 8
  store ptr %i.ej, ptr %i.ek, align 8
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr @11, ptr %i.wr, align 8
  store i64 1, ptr %i.el, align 8
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.ek, ptr %.sroa.4204.0..sroa_idx, align 8
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 1, ptr %.sroa.5205.0..sroa_idx, align 8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store ptr %i.wp, ptr %i.ws, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.em, i64 24, i1 false)
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.wd, ptr noundef nonnull %i.wj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.wk, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.el)
          to label %bb.eh unwind label %.loopexit.split-lp.loopexit.split-lp

bb.eg:                                            ; preds = %bb.ee, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  br label %bb.du

bb.eh:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  br label %bb.eg

_RNvMNtCsjNt1Wzngcv_9ty_server6serverNtB2_6Server27find_best_position_encoding.exit: ; preds = %bb.dw, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations20PositionEncodingKindNtNtCsjNt1Wzngcv_9ty_server8document16PositionEncodingB2u_NCNCNvMNtB2y_6serverNtB3x_6Server27find_best_position_encodings_00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldB2u_NvYB2u_NtNtBa_3cmp3Ord3cmpE0E0B2y_.exit.i.i.i.i, %bb.dv, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations20PositionEncodingKindENCNCNvMNtCsjNt1Wzngcv_9ty_server6serverNtB31_6Server27find_best_position_encodings_00ENtNtNtB9_6traits8iterator8Iterator4nextB33_.exit.i.i, %bb.du
  %.sroa.0.0.i = phi i8 [ 0, %bb.du ], [ 0, %bb.dv ], [ %i.vl, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations20PositionEncodingKindENCNCNvMNtCsjNt1Wzngcv_9ty_server6serverNtB31_6Server27find_best_position_encodings_00ENtNtNtB9_6traits8iterator8Iterator4nextB33_.exit.i.i ], [ %.sroa.0.0.i.i.i.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations20PositionEncodingKindNtNtCsjNt1Wzngcv_9ty_server8document16PositionEncodingB2u_NCNCNvMNtB2y_6serverNtB3x_6Server27find_best_position_encodings_00NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldB2u_NvYB2u_NtNtBa_3cmp3Ord3cmpE0E0B2y_.exit.i.i.i.i ], [ 0, %bb.dw ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  %i.wt = load i32, ptr %i.er, align 4, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !3019)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !3019
  %i.wu = and i32 %i.wt, 16384
  %.not.i367 = icmp eq i32 %i.wu, 0
  br i1 %.not.i367, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %_RNvMNtCsjNt1Wzngcv_9ty_server6serverNtB2_6Server27find_best_position_encoding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3020
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, i64 noundef 2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc371.a unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc371.a:                                      ; preds = %bb.ei
  %i.wv = load i64, ptr %i.ag, align 8, !range !7, !noalias !3020, !noundef !5
  %i.ww = trunc nuw i64 %i.wv to i1
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.wy = load i64, ptr %i.wx, align 8, !range !29, !noalias !3020, !noundef !5 ; 3 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  br i1 %i.ww, label %bb.ej, label %_RNvNtCsjNt1Wzngcv_9ty_server12capabilities25server_diagnostic_options.exit.i, !prof !3

bb.ej:                                            ; preds = %.noexc371.a
  %i.xa = load i64, ptr %i.wz, align 8, !noalias !3020
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.wy, i64 %i.xa) #42
          to label %.noexc372 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc372:                                        ; preds = %bb.ej
  unreachable

_RNvNtCsjNt1Wzngcv_9ty_server12capabilities25server_diagnostic_options.exit.i: ; preds = %.noexc371.a
  %i.xb = load ptr, ptr %i.wz, align 8, !noalias !3020, !nonnull !5, !noundef !5 ; 2 uses
  %i.xc = icmp samesign ugt i64 %i.wy, 1
  call void @llvm.assume(i1 %i.xc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3020
  store i16 31092, ptr %i.xb, align 1, !noalias !3020
  store i64 -2, ptr %i.bs, align 8, !noalias !3019
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.wy, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3019
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %i.xb, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !3019
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i64 2, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !3019
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store i8 1, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !3019
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 33
  store i8 1, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 1, !noalias !3019
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 34
  store i8 1, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx.sroa_idx.i, align 2, !noalias !3019
  br label %switch.lookup

bb.ek:                                            ; preds = %_RNvMNtCsjNt1Wzngcv_9ty_server6serverNtB2_6Server27find_best_position_encoding.exit
  store i64 -3, ptr %i.bs, align 8, !noalias !3019
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.ek, %_RNvNtCsjNt1Wzngcv_9ty_server12capabilities25server_diagnostic_options.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !3019
  %i.xd = zext nneg i8 %.sroa.0.0.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMNtCsjNt1Wzngcv_9ty_server6serverNtB2_6Server3new, i64 %i.xd
  %switch.load = load i64, ptr %switch.gep, align 8
  store i64 %switch.load, ptr %i.br, align 8, !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !3019
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !3019
  %i.xe = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 897) 24, i64 noundef 8) #35, !noalias !3019 ; 3 uses
  %i.xf = icmp eq ptr %i.xe, null
  br i1 %i.xf, label %bb.el, label %bb.en, !prof !3

.body324.thread.i:                                ; preds = %bb.kp, %.body324.i
  %i.xg = trunc nuw i8 %.sroa.0160.2.i to i1
  br i1 %i.xg, label %.thread.i, label %.body334

bb.el:                                            ; preds = %switch.lookup
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #42
          to label %.noexc.i unwind label %bb.em, !noalias !3019

.noexc.i:                                         ; preds = %bb.el
  unreachable

.body324.i:                                       ; preds = %.body.thread382.i, %bb.em
  %.sroa.0159.0.i = phi i8 [ %.sroa.0159.2376.i, %.body.thread382.i ], [ %.sroa.0160.3.i, %bb.em ]
  %.sroa.0160.2.i = phi i8 [ %.sroa.0160.4378.i, %.body.thread382.i ], [ %.sroa.0160.3.i, %bb.em ]
  %.pn262.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn262.pn.pn.pn380.i, %.body.thread382.i ], [ %i.xi, %bb.em ] ; 2 uses
  %i.xh = trunc nuw i8 %.sroa.0159.0.i to i1
  br i1 %i.xh, label %bb.kp, label %.body324.thread.i

bb.em:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations14CodeActionKindEECsjNt1Wzngcv_9ty_server.exit.i.i, %bb.el
  %.sroa.0160.3.i = phi i8 [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations14CodeActionKindEECsjNt1Wzngcv_9ty_server.exit.i.i ], [ 1, %bb.el ] ; 2 uses
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %.body324.i

.body.i:                                          ; preds = %.body284.i
  br i1 %.sroa.0159.4.i, label %.body.thread.i, label %.body.thread382.i

.body.thread419.i:                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsjNt1Wzngcv_9ty_server.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread382.i

.body.thread415.i:                                ; preds = %bb.ep
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.en:                                            ; preds = %switch.lookup
  store i64 -9223372036854775807, ptr %i.xe, align 8, !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !3019
  store i64 -1, ptr %i.bp, align 8, !noalias !3019
  %i.xj = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 2 uses
  store i64 -1, ptr %i.xj, align 8, !noalias !3019
  %i.xk = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store i8 2, ptr %i.xk, align 8, !noalias !3019
  %i.xl = getelementptr inbounds nuw i8, ptr %i.bp, i64 49
  store i8 2, ptr %i.xl, align 1, !noalias !3019
  %.sroa.03.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.xj, i64 24, i1 false), !noalias !3019
  store i64 1, ptr %i.bq, align 8, !noalias !3019
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.xe, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !3019
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 1, ptr %.sroa.03.sroa.5.0..sroa_idx.i, align 8, !noalias !3019
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i8 2, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !3019
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 49
  store i8 2, ptr %.sroa.55.0..sroa_idx.i, align 1, !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3021
  store ptr %i.a, ptr %i.af, align 8, !noalias !3021
  %i.xm = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.xm, align 8, !noalias !3021
  %i.xn = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.a, ptr %i.xn, align 8, !noalias !3021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3022
  store ptr %i.af, ptr %i.ae, align 8, !noalias !3023
  invoke void @_RNvXs0_NtNtCs4NRVxsYgnAr_4core5array5drainQINtB5_5DrainNtNtCsjNt1Wzngcv_9ty_server12capabilities16SupportedCommandNCINvMNtNtB9_3ops9try_traitINtB1U_17NeverShortCircuitNtNtCscdodAO9FK5_5alloc6string6StringE10wrap_mut_1BR_NCNvBT_19server_capabilities0E0EINtNtB1W_8function5FnMutTjEE8call_mutBV_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae, i64 noundef 0)
          to label %bb.ep unwind label %bb.eo, !noalias !3019

bb.eo:                                            ; preds = %bb.en
  %i.xo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtNtCs4NRVxsYgnAr_4core5array5drainINtB5_5DrainNtNtCsjNt1Wzngcv_9ty_server12capabilities16SupportedCommandNCINvMNtNtB9_3ops9try_traitINtB1T_17NeverShortCircuitNtNtCscdodAO9FK5_5alloc6string6StringE10wrap_mut_1BQ_NCNvBS_19server_capabilities0E0ENtNtB1V_4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body.thread.i unwind label %bb.eq, !noalias !3021

bb.ep:                                            ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3022
  invoke void @_RNvXs1_NtNtCs4NRVxsYgnAr_4core5array5drainINtB5_5DrainNtNtCsjNt1Wzngcv_9ty_server12capabilities16SupportedCommandNCINvMNtNtB9_3ops9try_traitINtB1T_17NeverShortCircuitNtNtCscdodAO9FK5_5alloc6string6StringE10wrap_mut_1BQ_NCNvBS_19server_capabilities0E0ENtNtB1V_4drop4Drop4dropBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.er unwind label %.body.thread415.i, !noalias !3019

bb.eq:                                            ; preds = %bb.eo
  %i.xp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !3021
  unreachable

bb.er:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3024
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, i64 noundef 1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc282.i unwind label %bb.ew, !noalias !3019

.noexc282.i:                                      ; preds = %bb.er
  %i.xq = load i64, ptr %i.ab, align 8, !range !7, !noalias !3024, !noundef !5
  %i.xr = trunc nuw i64 %i.xq to i1
  %i.xs = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.xt = load i64, ptr %i.xs, align 8, !range !29, !noalias !3024, !noundef !5 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  br i1 %i.xr, label %bb.es, label %bb.et, !prof !3

bb.es:                                            ; preds = %.noexc282.i
  %i.xv = load i64, ptr %i.xu, align 8, !noalias !3024
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.xt, i64 %i.xv) #42
          to label %.noexc283.i unwind label %bb.ew, !noalias !3019

.noexc283.i:                                      ; preds = %bb.es
  unreachable

bb.et:                                            ; preds = %.noexc282.i
  %i.xw = load ptr, ptr %i.xu, align 8, !noalias !3024, !nonnull !5, !noundef !5 ; 2 uses
  %i.xx = icmp ne i64 %i.xt, 0
  call void @llvm.assume(i1 %i.xx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3024
  store i64 %i.xt, ptr %i.ad, align 8, !noalias !3024
  %i.xy = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.xw, ptr %i.xy, align 8, !noalias !3024
  %i.xz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3024
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn)
          to label %bb.ey unwind label %bb.ev, !noalias !3025

bb.eu:                                            ; preds = %bb.ev
  %i.ya = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !3025
  unreachable

bb.ev:                                            ; preds = %bb.et
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.xz, align 8, !noalias !3024
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #43
          to label %.body284.i unwind label %bb.eu, !noalias !3025

.body284.i:                                       ; preds = %bb.ko, %bb.jt, %.body318.i, %bb.ew, %bb.ev
  %.sroa.0159.4.i = phi i1 [ true, %bb.ko ], [ true, %bb.ev ], [ true, %bb.ew ], [ false, %.body318.i ], [ false, %bb.jt ]
  %.sroa.0160.6.i = phi i8 [ 0, %bb.ko ], [ 1, %bb.ev ], [ 1, %bb.ew ], [ 0, %.body318.i ], [ 0, %bb.jt ] ; 2 uses
  %.pn262.pn.pn.i = phi { ptr, i32 } [ %.pn262.pn.ph.i, %bb.ko ], [ %lpad.loopexit.i.i, %bb.ev ], [ %i.yb, %bb.ew ], [ %.pn255.pn.pn.pn.i, %.body318.i ], [ %i.ahk, %bb.jt ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCscdodAO9FK5_5alloc6string6Stringj1_ECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.bn) #43
          to label %.body.i unwind label %bb.kb, !noalias !3019

bb.ew:                                            ; preds = %bb.es, %bb.er
  %i.yb = landingpad { ptr, i32 }
          cleanup
  br label %.body284.i

bb.ex:                                            ; preds = %bb.ez
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %bb.kk

bb.ey:                                            ; preds = %bb.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xw, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !3025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3024
  store i64 1, ptr %i.xz, align 8, !noalias !3024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3024
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i8 0, ptr %.sroa.416.0..sroa_idx.i, align 8, !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !3019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bm, ptr noundef nonnull align 8 dereferenceable(80) %i.bs, i64 80, i1 false), !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !3019
  store i64 -9223372036854775808, ptr %i.bl, align 8, !noalias !3019
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i8 1, ptr %.sroa.440.0..sroa_idx.i, align 8, !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !3019
  store i64 -9223372036854775808, ptr %i.bk, align 8, !noalias !3019
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i8 1, ptr %.sroa.443.0..sroa_idx.i, align 8, !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !3019
  store i64 -9223372036854775808, ptr %i.bj, align 8, !noalias !3019
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i8 1, ptr %.sroa.446.0..sroa_idx.i, align 8, !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !3019
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !3019
  %i.yd = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 897) 48, i64 noundef 8) #35, !noalias !3019 ; 7 uses
  %i.ye = icmp eq ptr %i.yd, null
  br i1 %i.ye, label %bb.ez, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit287.i, !prof !3

bb.ez:                                            ; preds = %bb.ey
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #42
          to label %.noexc286.i unwind label %bb.ex, !noalias !3019

.noexc286.i:                                      ; preds = %bb.ez
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit287.i: ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !3019
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef 1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fc unwind label %bb.fb, !noalias !3019

bb.fa:                                            ; preds = %bb.ff, %bb.fb
  %.pn262.i = phi { ptr, i32 } [ %i.yf, %bb.fb ], [ %i.yo, %bb.ff ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yd, i64 noundef 48, i64 noundef 8) #35, !noalias !3019
  br label %bb.kk

bb.fb:                                            ; preds = %bb.fd, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit287.i
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.fc:                                            ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit287.i
  %i.yg = load i64, ptr %i.an, align 8, !range !7, !noalias !3019, !noundef !5
  %i.yh = trunc nuw i64 %i.yg to i1
  %i.yi = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.yj = load i64, ptr %i.yi, align 8, !range !29, !noalias !3019, !noundef !5 ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  br i1 %i.yh, label %bb.fd, label %bb.fe, !prof !3

bb.fd:                                            ; preds = %bb.fc
  %i.yl = load i64, ptr %i.yk, align 8, !noalias !3019
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.yj, i64 %i.yl) #42
          to label %bb.kd unwind label %bb.fb, !noalias !3019

bb.fe:                                            ; preds = %bb.fc
  %i.ym = load ptr, ptr %i.yk, align 8, !noalias !3019, !nonnull !5, !noundef !5 ; 2 uses
  %i.yn = icmp ne i64 %i.yj, 0
  call void @llvm.assume(i1 %i.yn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3019
  store i8 40, ptr %i.ym, align 1, !noalias !3019
  store i64 %i.yj, ptr %i.bg, align 8, !noalias !3019
  %.sroa.4166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.ym, ptr %.sroa.4166.0..sroa_idx.i, align 8, !noalias !3019
  %.sroa.6167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 1, ptr %.sroa.6167.0..sroa_idx.i, align 8, !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3019
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, i64 noundef 1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fg unwind label %bb.ff, !noalias !3019

bb.ff:                                            ; preds = %bb.fh, %bb.fe
  %i.yo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg) #43
          to label %bb.fa unwind label %bb.kb, !noalias !3019

bb.fg:                                            ; preds = %bb.fe
  %i.yp = load i64, ptr %i.am, align 8, !range !7, !noalias !3019, !noundef !5
  %i.yq = trunc nuw i64 %i.yp to i1
  %i.yr = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ys = load i64, ptr %i.yr, align 8, !range !29, !noalias !3019, !noundef !5 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  br i1 %i.yq, label %bb.fh, label %bb.fi, !prof !3

bb.fh:                                            ; preds = %bb.fg
  %i.yu = load i64, ptr %i.yt, align 8, !noalias !3019
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ys, i64 %i.yu) #42
          to label %bb.kd unwind label %bb.ff, !noalias !3019

bb.fi:                                            ; preds = %bb.fg
  %i.yv = load ptr, ptr %i.yt, align 8, !noalias !3019, !nonnull !5, !noundef !5 ; 2 uses
  %i.yw = icmp ne i64 %i.ys, 0
  call void @llvm.assume(i1 %i.yw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3019
  store i8 44, ptr %i.yv, align 1, !noalias !3019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yd, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !3019
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yd, i64 24
  store i64 %i.ys, ptr %i.yx, align 8, !noalias !3019
  %.sroa.4172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yd, i64 32
  store ptr %i.yv, ptr %.sroa.4172.0..sroa_idx.i, align 8, !noalias !3019
  %.sroa.5173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yd, i64 40
  store i64 1, ptr %.sroa.5173.0..sroa_idx.i, align 8, !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !3019
  store i64 2, ptr %i.bh, align 8, !noalias !3019
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.yd, ptr %.sroa.456.0..sroa_idx.i, align 8, !noalias !3019
  %.sroa.557.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 2, ptr %.sroa.557.0..sroa_idx.i, align 8, !noalias !3019
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !3019
  %i.yy = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 897) 24, i64 noundef 8) #35, !noalias !3019 ; 6 uses
  %i.yz = icmp eq ptr %i.yy, null
  br i1 %i.yz, label %bb.fj, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit289.i, !prof !3

bb.fj:                                            ; preds = %bb.fi
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #42
          to label %.noexc288.i unwind label %bb.fl, !noalias !3019

.noexc288.i:                                      ; preds = %bb.fj
  unreachable

bb.fk:                                            ; preds = %bb.fm, %bb.fl
  %.pn260.i = phi { ptr, i32 } [ %i.zb, %bb.fm ], [ %i.za, %bb.fl ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.bh) #43
          to label %bb.kk unwind label %bb.kb, !noalias !3019

bb.fl:                                            ; preds = %bb.fj
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit289.i: ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !3019
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, i64 noundef 1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fn unwind label %bb.fm, !noalias !3019

bb.fm:                                            ; preds = %bb.fo, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit289.i
  %i.zb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yy, i64 noundef 24, i64 noundef 8) #35, !noalias !3019
  br label %bb.fk

bb.fn:                                            ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit289.i
  %i.zc = load i64, ptr %i.al, align 8, !range !7, !noalias !3019, !noundef !5
  %i.zd = trunc nuw i64 %i.zc to i1
  %i.ze = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.zf = load i64, ptr %i.ze, align 8, !range !29, !noalias !3019, !noundef !5 ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  br i1 %i.zd, label %bb.fo, label %bb.fp, !prof !3

bb.fo:                                            ; preds = %bb.fn
  %i.zh = load i64, ptr %i.zg, align 8, !noalias !3019
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.zf, i64 %i.zh) #42
          to label %bb.kd unwind label %bb.fm, !noalias !3019

bb.fp:                                            ; preds = %bb.fn
  %i.zi = load ptr, ptr %i.zg, align 8, !noalias !3019, !nonnull !5, !noundef !5 ; 2 uses
  %i.zj = icmp ne i64 %i.zf, 0
  call void @llvm.assume(i1 %i.zj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !3019
  store i8 41, ptr %i.zi, align 1, !noalias !3019
  store i64 %i.zf, ptr %i.yy, align 8, !noalias !3019
  %.sroa.4178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  store ptr %i.zi, ptr %.sroa.4178.0..sroa_idx.i, align 8, !noalias !3019
  %.sroa.5179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  store i64 1, ptr %.sroa.5179.0..sroa_idx.i, align 8, !noalias !3019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !3019
  %.sroa.052.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 1, ptr %.sroa.052.sroa.4.0..sroa_idx.i, align 8, !noalias !3019
  %.sroa.052.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.yy, ptr %.sroa.052.sroa.5.0..sroa_idx.i, align 8, !noalias !3019
  %.sroa.052.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store i64 1, ptr %.sroa.052.sroa.6.0..sroa_idx.i, align 8, !noalias !3019
  %.sroa.553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store i8 2, ptr %.sroa.553.0..sroa_idx.i, align 8, !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !3019
  store i64 -9223372036854775807, ptr %i.bf, align 8, !noalias !3019
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i8 2, ptr %.sroa.465.0..sroa_idx.i, align 8, !noalias !3019
end_hunk_1
begin_hunk_2_@_RNvMNtCsjNt1Wzngcv_9ty_server6serverNtB2_6Server3new:bb.a
  %i.agu = landingpad { ptr, i32 }
          cleanup
  br label %.body306.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures21ExecuteCommandOptionsEECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures21ExecuteCommandOptionsECsjNt1Wzngcv_9ty_server.exit.i.i, %bb.iq
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors21CallHierarchyProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.adz)
          to label %bb.ix unwind label %bb.iw, !noalias !3019

bb.iv:                                            ; preds = %bb.iw, %.body306.i
  %.pn235.i = phi { ptr, i32 } [ %i.agv, %bb.iw ], [ %.pn233.i, %.body306.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors22SemanticTokensProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(136) %i.aeb) #43
          to label %bb.iy unwind label %bb.kb, !noalias !3019

bb.iw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures21ExecuteCommandOptionsEECsjNt1Wzngcv_9ty_server.exit.i
  %i.agv = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

bb.ix:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures21ExecuteCommandOptionsEECsjNt1Wzngcv_9ty_server.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors22SemanticTokensProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(136) %i.aeb)
          to label %bb.ja unwind label %bb.iz, !noalias !3019

bb.iy:                                            ; preds = %bb.iz, %bb.iv
  %.pn237.i = phi { ptr, i32 } [ %i.agw, %bb.iz ], [ %.pn235.i, %bb.iv ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors21TypeHierarchyProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.aed) #43
          to label %bb.jb unwind label %bb.kb, !noalias !3019

bb.iz:                                            ; preds = %bb.ix
  %i.agw = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.ja:                                            ; preds = %bb.ix
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors21TypeHierarchyProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.aed)
          to label %bb.jd unwind label %bb.jc, !noalias !3019

bb.jb:                                            ; preds = %bb.jc, %bb.iy
  %.pn239.i = phi { ptr, i32 } [ %i.agx, %bb.jc ], [ %.pn237.i, %bb.iy ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors17InlayHintProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.aef) #43
          to label %bb.je unwind label %bb.kb, !noalias !3019

bb.jc:                                            ; preds = %bb.ja
  %i.agx = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

bb.jd:                                            ; preds = %bb.ja
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors17InlayHintProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.aef)
          to label %bb.jg unwind label %bb.jf, !noalias !3019

bb.je:                                            ; preds = %bb.jf, %bb.jb
  %.pn241.i = phi { ptr, i32 } [ %i.agy, %bb.jf ], [ %.pn239.i, %bb.jb ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors18DiagnosticProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(80) %i.aeg) #43
          to label %bb.jh unwind label %bb.kb, !noalias !3019

bb.jf:                                            ; preds = %bb.jd
  %i.agy = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

bb.jg:                                            ; preds = %bb.jd
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors18DiagnosticProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(80) %i.aeg)
          to label %bb.jj unwind label %bb.ji, !noalias !3019

bb.jh:                                            ; preds = %bb.ji, %bb.je
  %.pn243.i = phi { ptr, i32 } [ %i.agz, %bb.ji ], [ %.pn241.i, %bb.je ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures16WorkspaceOptionsEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(224) %i.aei) #43
          to label %bb.kc unwind label %bb.kb, !noalias !3019

bb.ji:                                            ; preds = %bb.jg
  %i.agz = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

bb.jj:                                            ; preds = %bb.jg
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures16WorkspaceOptionsEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(224) %i.aei)
          to label %bb.jk unwind label %bb.hl, !noalias !3019

bb.jk:                                            ; preds = %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3019
  %i.aha = load i64, ptr %i.acy, align 8, !range !14, !alias.scope !3044, !noalias !3019, !noundef !5
  %i.ahb = icmp ugt i64 %i.aha, -4
  br i1 %i.ahb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34WorkspaceFoldersServerCapabilitiesEECsjNt1Wzngcv_9ty_server.exit.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.acy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i.i.i310.i unwind label %bb.jm, !noalias !3019

bb.jm:                                            ; preds = %bb.jl
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.acy)
          to label %.body298.i unwind label %bb.jn, !noalias !3019

bb.jn:                                            ; preds = %bb.jm
  %i.ahd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !3019
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i.i.i310.i: ; preds = %bb.jl
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.acy)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34WorkspaceFoldersServerCapabilitiesEECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.jo, !noalias !3019

bb.jo:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i.i.i310.i
  %i.ahe = landingpad { ptr, i32 }
          cleanup
  br label %.body298.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34WorkspaceFoldersServerCapabilitiesEECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server.exit.i.i.i.i310.i, %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3019
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors16NotebookSelectorj1_ECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(224) %i.ar)
          to label %bb.jp unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.thread366.i, !noalias !3019

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %.body298.i
  br i1 %cond271.i, label %bb.kg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.thread.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.thread366.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34WorkspaceFoldersServerCapabilitiesEECsjNt1Wzngcv_9ty_server.exit.i
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  br label %bb.kg

bb.jp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34WorkspaceFoldersServerCapabilitiesEECsjNt1Wzngcv_9ty_server.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3019
  %i.ahg = load i64, ptr %i.av, align 8, !range !8, !alias.scope !3045, !noalias !3019, !noundef !5
  %i.ahh = icmp eq i64 %i.ahg, -1
  br i1 %i.ahh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjNt1Wzngcv_9ty_server.exit.i, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server.exit.i.i unwind label %bb.jr, !noalias !3019

bb.jr:                                            ; preds = %bb.jq
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %.body314.thread.i unwind label %bb.js, !noalias !3019

bb.js:                                            ; preds = %bb.jr
  %i.ahj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !3019
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server.exit.i.i: ; preds = %bb.jq
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjNt1Wzngcv_9ty_server.exit.i unwind label %.split.i, !noalias !3019

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsjNt1Wzngcv_9ty_server.exit.i.i, %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !3019
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %bb.ju unwind label %bb.jt, !noalias !3019

bb.jt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjNt1Wzngcv_9ty_server.exit.i
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body284.i unwind label %bb.jv, !noalias !3019

bb.ju:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjNt1Wzngcv_9ty_server.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsjNt1Wzngcv_9ty_server.exit.i unwind label %bb.fq, !noalias !3019

bb.jv:                                            ; preds = %bb.jt
  %i.ahl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !3019
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %bb.ju
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !3019
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsjNt1Wzngcv_9ty_server.exit.i.i.i.i unwind label %bb.jw, !noalias !3019

bb.jw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsjNt1Wzngcv_9ty_server.exit.i
  %i.ahm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %.body.thread382.i unwind label %bb.jx, !noalias !3019

bb.jx:                                            ; preds = %bb.jw
  %i.ahn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !3019
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsjNt1Wzngcv_9ty_server.exit.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsjNt1Wzngcv_9ty_server.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCscdodAO9FK5_5alloc6string6Stringj1_ECsjNt1Wzngcv_9ty_server.exit.i unwind label %.body.thread419.i, !noalias !3019

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCscdodAO9FK5_5alloc6string6Stringj1_ECsjNt1Wzngcv_9ty_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsjNt1Wzngcv_9ty_server.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !3019
  %i.aho = load i64, ptr %i.bp, align 8, !range !8, !alias.scope !3046, !noalias !3019, !noundef !5
  %i.ahp = icmp eq i64 %i.aho, -1
  br i1 %i.ahp, label %bb.kq, label %bb.jy

bb.jy:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCscdodAO9FK5_5alloc6string6Stringj1_ECsjNt1Wzngcv_9ty_server.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations14CodeActionKindENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations14CodeActionKindEECsjNt1Wzngcv_9ty_server.exit.i.i unwind label %bb.jz, !noalias !3019

bb.jz:                                            ; preds = %bb.jy
  %i.ahq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations14CodeActionKindENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %.body334 unwind label %bb.ka, !noalias !3019

bb.ka:                                            ; preds = %bb.jz
  %i.ahr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !3019
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations14CodeActionKindEECsjNt1Wzngcv_9ty_server.exit.i.i: ; preds = %bb.jy
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations14CodeActionKindENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %bb.kq unwind label %bb.em, !noalias !3019

bb.kb:                                            ; preds = %.thread.i, %bb.kp, %.body.thread.i, %.body.thread382.i, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %.thread348.i, %bb.ki, %.body314.thread.i, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.thread.i, %bb.kc, %bb.jh, %bb.je, %bb.jb, %bb.iy, %bb.iv, %.body306.i, %bb.io, %bb.il, %bb.ii, %.body303.i, %bb.ib, %bb.hy, %bb.hv, %bb.hs, %bb.hp, %bb.hn, %.body298.i, %bb.gg, %bb.gb, %bb.fu, %bb.fs, %bb.fk, %bb.ff, %.body284.i
  %i.ahs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !3019
  unreachable

bb.kc:                                            ; preds = %bb.jh, %bb.hl
  %.pn245.i = phi { ptr, i32 } [ %i.acx, %bb.hl ], [ %.pn243.i, %bb.jh ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures34WorkspaceFoldersServerCapabilitiesEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(32) %i.acy) #43
          to label %.body298.i unwind label %bb.kb, !noalias !3019

bb.kd:                                            ; preds = %bb.gp, %bb.gj, %bb.gf, %bb.ga, %bb.fo, %bb.fh, %bb.fd
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.thread.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i, %bb.gn, %bb.gm
  %.pn250.pn364.i = phi { ptr, i32 } [ %.pn247.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i ], [ %i.abm, %bb.gn ], [ %i.abl, %bb.gm ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors22DocumentSymbolProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(32) %i.as) #43
          to label %bb.ke unwind label %bb.kb, !noalias !3019

bb.ke:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.thread.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors20FoldingRangeProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.at) #43
          to label %bb.kf unwind label %bb.kb, !noalias !3019

bb.kf:                                            ; preds = %bb.ke
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors22SelectionRangeProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.au) #43
          to label %bb.kh unwind label %bb.kb, !noalias !3019

bb.kg:                                            ; preds = %bb.kh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.thread366.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i
  %.pn250.pn365.i = phi { ptr, i32 } [ %.pn250.pn364.i, %bb.kh ], [ %i.ahf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.thread366.i ], [ %.pn247.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i ] ; 2 uses
  %.sroa.0159.14363.i = phi i1 [ true, %bb.kh ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.thread366.i ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors8NotebookEECsjNt1Wzngcv_9ty_server.exit.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB12_6string6StringEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.av) #43
          to label %.body314.i unwind label %bb.kb, !noalias !3019

bb.kh:                                            ; preds = %bb.kf
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures17CompletionOptionsEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.ay) #43
          to label %bb.kg unwind label %bb.kb, !noalias !3019

.body314.thread.i:                                ; preds = %bb.ki, %bb.jr, %.split.i, %.body314.i, %bb.fu
  %.sroa.0159.15.i = phi i8 [ 1, %bb.ki ], [ 0, %.body314.i ], [ 1, %bb.fu ], [ 0, %bb.jr ], [ 0, %.split.i ]
  %.pn255.pn.pn.i = phi { ptr, i32 } [ %.pn255.pn358.i, %bb.ki ], [ %.pn250.pn365.i, %.body314.i ], [ %i.zw, %bb.fu ], [ %i.ahi, %bb.jr ], [ %i.aab, %.split.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.az) #43
          to label %.body318.i unwind label %bb.kb, !noalias !3019

bb.ki:                                            ; preds = %.thread354.i, %.body314.i, %.split.thread.i
  %.pn255.pn358.i = phi { ptr, i32 } [ %.pn255.i, %.thread354.i ], [ %.pn250.pn365.i, %.body314.i ], [ %i.aaa, %.split.thread.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors22SemanticTokensProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(136) %i.be) #43
          to label %.body314.thread.i unwind label %bb.kb, !noalias !3019

.thread348.i:                                     ; preds = %bb.fs, %.body318.i
  %.pn255.pn.pn.pn353.i = phi { ptr, i32 } [ %.pn255.pn.pn.pn.i, %.body318.i ], [ %i.zq, %bb.fs ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors17InlayHintProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.bf) #43
          to label %bb.kj unwind label %bb.kb, !noalias !3019

bb.kj:                                            ; preds = %.thread348.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20SignatureHelpOptionsEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.bi) #43
          to label %bb.kk unwind label %bb.kb, !noalias !3019

bb.kk:                                            ; preds = %bb.kj, %bb.fk, %bb.fa, %bb.ex
  %.pn262.pn.ph.i = phi { ptr, i32 } [ %i.yc, %bb.ex ], [ %.pn255.pn.pn.pn353.i, %bb.kj ], [ %.pn260.i, %bb.fk ], [ %.pn262.i, %bb.fa ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors22ImplementationProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.bj) #43
          to label %bb.kl unwind label %bb.kb, !noalias !3019

bb.kl:                                            ; preds = %bb.kk
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors19DeclarationProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.bk) #43
          to label %bb.km unwind label %bb.kb, !noalias !3019

bb.km:                                            ; preds = %bb.kl
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors22TypeDefinitionProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.bl) #43
          to label %bb.kn unwind label %bb.kb, !noalias !3019

bb.kn:                                            ; preds = %bb.km
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors18DiagnosticProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(80) %i.bm) #43
          to label %bb.ko unwind label %bb.kb, !noalias !3019

bb.ko:                                            ; preds = %bb.kn
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures21ExecuteCommandOptionsEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(32) %i.bo) #43
          to label %.body284.i unwind label %bb.kb, !noalias !3019

.body.thread382.i:                                ; preds = %.body.thread.i, %bb.jw, %.body.thread419.i, %.body.i
  %.pn262.pn.pn.pn380.i = phi { ptr, i32 } [ %.pn262.pn.pn.pn381.i, %.body.thread.i ], [ %.pn262.pn.pn.i, %.body.i ], [ %i.ahm, %bb.jw ], [ %lpad.loopexit.i, %.body.thread419.i ]
  %.sroa.0160.4378.i = phi i8 [ %.sroa.0160.4379.i, %.body.thread.i ], [ %.sroa.0160.6.i, %.body.i ], [ 0, %bb.jw ], [ 0, %.body.thread419.i ]
  %.sroa.0159.2376.i = phi i8 [ 1, %.body.thread.i ], [ 0, %.body.i ], [ 0, %bb.jw ], [ 0, %.body.thread419.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations14CodeActionKindEEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.bp) #43
          to label %.body324.i unwind label %bb.kb, !noalias !3019

.body.thread.i:                                   ; preds = %bb.eo, %.body.thread415.i, %.body.i
  %.pn262.pn.pn.pn381.i = phi { ptr, i32 } [ %.pn262.pn.pn.i, %.body.i ], [ %i.xo, %bb.eo ], [ %lpad.loopexit.split-lp.i, %.body.thread415.i ]
  %.sroa.0160.4379.i = phi i8 [ %.sroa.0160.6.i, %.body.i ], [ 1, %bb.eo ], [ 1, %.body.thread415.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors18CodeActionProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.bq) #43
          to label %.body.thread382.i unwind label %bb.kb, !noalias !3019

bb.kp:                                            ; preds = %.body324.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations20PositionEncodingKindEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.br) #43
          to label %.body324.thread.i unwind label %bb.kb, !noalias !3019

.thread.i:                                        ; preds = %.body324.thread.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated8enum_ors18DiagnosticProviderEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(80) %i.bs) #43
          to label %.body334 unwind label %bb.kb, !noalias !3019

bb.kq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated12enumerations14CodeActionKindEECsjNt1Wzngcv_9ty_server.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCscdodAO9FK5_5alloc6string6Stringj1_ECsjNt1Wzngcv_9ty_server.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !3019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !3019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  %i.aht = invoke { ptr, i64 } @_RNvCs56aZGHL6Dc6_7ruff_db15program_version()
          to label %bb.ks unwind label %bb.kr     ; 2 uses

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsfCaL8mGBm0d_17crossbeam_channel7channel6SenderNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventEEB1y_.exit452: ; preds = %.split, %bb.px, %bb.ph, %bb.qh, %.body416, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECsjNt1Wzngcv_9ty_server.exit, %bb.qw, %bb.kr
  %.sroa.0113.5 = phi i1 [ false, %bb.qw ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECsjNt1Wzngcv_9ty_server.exit ], [ %.sroa.0113.6, %bb.kr ], [ false, %.body416 ], [ false, %bb.qh ], [ false, %bb.ph ], [ false, %bb.px ], [ false, %.split ]
  %.sroa.0111.4 = phi i8 [ 1, %bb.qw ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECsjNt1Wzngcv_9ty_server.exit ], [ %.sroa.0111.5, %bb.kr ], [ %.sroa.0111.8, %.body416 ], [ %.sroa.0111.10.ph, %bb.qh ], [ 0, %bb.ph ], [ 0, %bb.px ], [ 0, %.split ]
  %.sroa.0107.2 = phi i8 [ 1, %bb.qw ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECsjNt1Wzngcv_9ty_server.exit ], [ 1, %bb.kr ], [ 0, %.body416 ], [ 1, %bb.qh ], [ 0, %bb.ph ], [ 0, %bb.px ], [ 0, %.split ]
  %.pn286.pn.pn = phi { ptr, i32 } [ %.pn286, %bb.qw ], [ %i.amp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECsjNt1Wzngcv_9ty_server.exit ], [ %i.ahu, %bb.kr ], [ %.pn278, %.body416 ], [ %.pn280.pn.ph, %bb.qh ], [ %i.asd, %bb.ph ], [ %i.asr, %bb.px ], [ %lpad.thr_comm.split-lp, %.split ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures18ServerCapabilitiesECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(1520) %i.eh) #43
          to label %.body334 unwind label %bb.bj

bb.kr:                                            ; preds = %bb.pz, %bb.lb, %.noexc384.a, %bb.la, %bb.ky, %bb.nd, %bb.nc, %bb.li, %bb.lg, %bb.lf, %bb.kv, %bb.ku, %bb.kq
  %.sroa.0113.6 = phi i1 [ false, %bb.nc ], [ false, %bb.pz ], [ false, %bb.nd ], [ true, %bb.li ], [ true, %bb.lg ], [ true, %bb.lf ], [ true, %bb.la ], [ true, %.noexc384.a ], [ true, %bb.lb ], [ true, %bb.kv ], [ true, %bb.ku ], [ true, %bb.kq ], [ true, %bb.ky ]
  %.sroa.0111.5 = phi i8 [ 1, %bb.nc ], [ 0, %bb.pz ], [ 1, %bb.nd ], [ 1, %bb.li ], [ 1, %bb.lg ], [ 1, %bb.lf ], [ 1, %bb.la ], [ 1, %.noexc384.a ], [ 1, %bb.lb ], [ 1, %bb.kv ], [ 1, %bb.ku ], [ 1, %bb.kq ], [ 1, %bb.ky ]
  %i.ahu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsfCaL8mGBm0d_17crossbeam_channel7channel6SenderNtNtNtCsjNt1Wzngcv_9ty_server6server9main_loop5EventEEB1y_.exit452

bb.ks:                                            ; preds = %bb.kq
  %i.ahv = extractvalue { ptr, i64 } %i.aht, 0    ; 2 uses
  %.not271 = icmp eq ptr %i.ahv, null             ; 2 uses
  %i.ahw = extractvalue { ptr, i64 } %i.aht, 1
  %spec.select690.a = select i1 %.not271, ptr @72, ptr %i.ahv
  %spec.select691 = select i1 %.not271, i64 7, i64 %i.ahw
  store ptr %spec.select690.a, ptr %i.eg, align 8
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 %spec.select691, ptr %i.ahx, align 8
  %i.ahy = load atomic i64, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ahz = icmp ult i64 %i.ahy, 3
  br i1 %i.ahz, label %bb.kt, label %bb.ld

bb.kt:                                            ; preds = %bb.ks
  %i.aia = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news2_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.aia, label %bb.ku [
    i8 0, label %bb.ld
    i8 1, label %bb.kv
    i8 2, label %bb.kv
  ], !prof !28

bb.ku:                                            ; preds = %bb.kt
  %i.aib = invoke noundef i8 @_RNvMNtCs3pBv9WGWlWf_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news2_10___CALLSITE)
          to label %bb.kw unwind label %bb.kr     ; 2 uses

bb.kv:                                            ; preds = %bb.kt, %bb.kt, %bb.kw
  %.sroa.066.0 = phi i8 [ %i.aib, %bb.kw ], [ %i.aia, %bb.kt ], [ %i.aia, %bb.kt ]
  %i.aic = load ptr, ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news2_10___CALLSITE, align 8, !nonnull !5, !align !19, !noundef !5
  %i.aid = invoke noundef zeroext i1 @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aic, i8 noundef %.sroa.066.0)
          to label %bb.kx unwind label %bb.kr

bb.kw:                                            ; preds = %bb.ku
  %i.aie = icmp eq i8 %i.aib, 0
  br i1 %i.aie, label %bb.ld, label %bb.kv

bb.kx:                                            ; preds = %bb.kv
  br i1 %i.aid, label %bb.ky, label %bb.ld

bb.ky:                                            ; preds = %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  %i.aif = load ptr, ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news2_10___CALLSITE, align 8, !nonnull !5, !align !19, !noundef !5 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  store ptr %i.eg, ptr %i.ec, align 8
  %.sroa.4210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsjNt1Wzngcv_9ty_server, ptr %.sroa.4210.0..sroa_idx, align 8
  store ptr @73, ptr %i.ed, align 8
  %i.aih = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.ec, ptr %i.aih, align 8
  store ptr %i.ed, ptr %i.ee, align 8
  %i.aii = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr @11, ptr %i.aii, align 8
  store i64 1, ptr %i.ef, align 8
  %.sroa.068.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.ee, ptr %.sroa.068.sroa.4.0..sroa_idx, align 8
  %.sroa.068.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i64 1, ptr %.sroa.068.sroa.5.0..sroa_idx, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store ptr %i.aig, ptr %.sroa.469.0..sroa_idx, align 8
  invoke void @_RNvMNtCs3pBv9WGWlWf_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aif, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ef)
          to label %.noexc383.a unwind label %bb.kr

.noexc383.a:                                      ; preds = %bb.ky
  %i.aij = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3047
  %i.aik = icmp eq i8 %i.aij, 0
  br i1 %i.aik, label %bb.kz, label %_RNCNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news6_0B6_.exit

bb.kz:                                            ; preds = %.noexc383.a
  %i.ail = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !3047 ; 2 uses
  %i.aim = icmp ult i64 %i.ail, 6
  call void @llvm.assume(i1 %i.aim)
  %i.ain = icmp samesign ugt i64 %i.ail, 2
  br i1 %i.ain, label %bb.la, label %_RNCNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news6_0B6_.exit

bb.la:                                            ; preds = %bb.kz
  %i.aio = load ptr, ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news2_10___CALLSITE, align 8, !noalias !3047, !nonnull !5, !align !19, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3047
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 32
  %i.aiq = load ptr, ptr %i.aip, align 8, !nonnull !5, !noundef !5
  %i.air = getelementptr inbounds nuw i8, ptr %i.aio, i64 40
  %i.ais = load i64, ptr %i.air, align 8, !noundef !5
  store i64 3, ptr %i.t, align 8, !noalias !3047
  %.sroa.3.0..sroa_idx.i381 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.aiq, ptr %.sroa.3.0..sroa_idx.i381, align 8, !noalias !3047
  %.sroa.5.0..sroa_idx.i382 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.ais, ptr %.sroa.5.0..sroa_idx.i382, align 8, !noalias !3047
  %i.ait = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %.noexc384.a unwind label %bb.kr ; 2 uses

.noexc384.a:                                      ; preds = %bb.la
  %i.aiu = extractvalue { ptr, ptr } %i.ait, 0    ; 2 uses
  %i.aiv = extractvalue { ptr, ptr } %i.ait, 1    ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 24
  %i.aix = load ptr, ptr %i.aiw, align 8, !invariant.load !5, !nonnull !5
  %i.aiy = invoke noundef zeroext i1 %i.aix(ptr noundef %i.aiu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %.noexc385.a unwind label %bb.kr, !inline_history !2907

.noexc385.a:                                      ; preds = %.noexc384.a
  br i1 %i.aiy, label %bb.lb, label %.noexc386

bb.lb:                                            ; preds = %.noexc385.a
  invoke void @_RNvNtCsdbMkb98Dhky_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aio, ptr noundef nonnull %i.aiu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aiv, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ef)
          to label %.noexc386 unwind label %bb.kr

.noexc386:                                        ; preds = %bb.lb, %.noexc385.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3047
  br label %_RNCNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news6_0B6_.exit

_RNCNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news6_0B6_.exit: ; preds = %.noexc386, %bb.kz, %.noexc383.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lj, %bb.le, %bb.ld, %_RNCNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news6_0B6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  store ptr null, ptr %i.dt, align 8
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 0, ptr %.sroa.4229.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cn, i64 noundef 12, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ln unwind label %bb.lm

bb.ld:                                            ; preds = %bb.kw, %bb.kt, %bb.ks, %bb.kx
  %i.aiz = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.aja = icmp eq i8 %i.aiz, 0
  br i1 %i.aja, label %bb.le, label %bb.lc

bb.le:                                            ; preds = %bb.ld
  %i.ajb = load atomic i64, ptr @_RNvCsdxG2AMukdbL_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ajc = icmp ult i64 %i.ajb, 6
  call void @llvm.assume(i1 %i.ajc)
  %i.ajd = icmp samesign ugt i64 %i.ajb, 2
  br i1 %i.ajd, label %bb.lf, label %bb.lc

bb.lf:                                            ; preds = %bb.le
  %i.aje = load ptr, ptr @_RNvNvMNtCsjNt1Wzngcv_9ty_server6serverNtB4_6Server3news2_10___CALLSITE, align 8, !nonnull !5, !align !19, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 32
  %i.ajg = load ptr, ptr %i.ajf, align 8, !nonnull !5, !noundef !5
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.aje, i64 40
  %i.aji = load i64, ptr %i.ajh, align 8, !noundef !5
  store i64 3, ptr %i.eb, align 8
  %.sroa.3215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.ajg, ptr %.sroa.3215.0..sroa_idx, align 8
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i64 %i.aji, ptr %.sroa.5216.0..sroa_idx, align 8
  %i.ajj = invoke { ptr, ptr } @_RNvCsdxG2AMukdbL_3log6logger()
          to label %bb.lg unwind label %bb.kr     ; 2 uses

bb.lg:                                            ; preds = %bb.lf
  %i.ajk = extractvalue { ptr, ptr } %i.ajj, 0    ; 2 uses
  %i.ajl = extractvalue { ptr, ptr } %i.ajj, 1    ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 24
  %i.ajn = load ptr, ptr %i.ajm, align 8, !invariant.load !5, !nonnull !5
  %i.ajo = invoke noundef zeroext i1 %i.ajn(ptr noundef %i.ajk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb)
end_hunk_2
